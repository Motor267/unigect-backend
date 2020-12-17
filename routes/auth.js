const express = require('express');
const { check, validationResult, body } = require('express-validator');
const router = express.Router();
const helper = require('../config/helpers');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');
const { database } = require('../config/helpers');


// LOGIN ROUTE
router.post('/login', [helper.hasAuthFields, helper.isPasswordAndUserMatch], (req, res) => {
    let token = jwt.sign({ state: 'true', email: req.body.email, username: req.body.username }, helper.secret, {
        algorithm: 'HS512',
        expiresIn: '4h'
    });
    const email = req.body.email;
    database.table('users as u')
        .filter({ 'u.email': email }).get()
        .then(user => {
            if (user) {
                res.status(200).json({
                    token: token,
                    auth: true,
                    email: user.email,
                    username: user.username,
                    fname: user.fname,
                    lname: user.lname,
                    photoUrl: user.photoUrl,
                    userId: user.id,
                    type: user.type,
                    role: user.role,
                    age: user.age
                });
            } else {
                res.json({ message: "Can't found user" });
            }
        }).catch(err => console.log(err));
});

// REGISTER ROUTE
router.post('/register', [
    check('email').isEmail().not().isEmpty().withMessage('Field can\'t be empty')
    .normalizeEmail({ all_lowercase: true }),
    check('password').escape().trim().not().isEmpty().withMessage('Field can\'t be empty')
    .isLength({ min: 6 }).withMessage("must be 6 characters long"),
    body('email').custom(value => {
        return helper.database.table('users').filter({
            $or: [
                { email: value }, { username: value.split("@")[0] }
            ]
        }).get().then(user => {
            if (user) {
                console.log(user);
                return Promise.reject('Email / Username already exists, choose another one.');
            }
        })
    })
], async(req, res) => {
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
        return res.status(422).json({ errors: errors.array() });
    } else {

        let email = req.body.email;
        let username = email.split("@")[0];
        let password = await bcrypt.hash(req.body.password, 10);
        let fname = req.body.fname;
        let lname = req.body.lname;

        /**
         * ROLE 777 = ADMIN
         * ROLE 555 = CUSTOMER
         **/
        helper.database.table('users').insert({
            username: username,
            password: password,
            email: email,
            role: 555,
            lname: lname || null,
            fname: fname || null,
            photoUrl: "https://image.shutterstock.com/image-vector/person-gray-photo-placeholder-man-260nw-1259815156.jpg"
        }).then(lastId => {
            if (lastId > 0) {
                res.status(200).json({ message: 'Registro completado con exito.' });
            } else {
                res.status(500).json({ message: 'Hubo un error en el registro' });
            }
        }).catch(err => res.status(433).json({ error: err }));
    }
});


module.exports = router;