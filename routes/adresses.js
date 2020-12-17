const express = require('express');
const router = express.Router();
const { database } = require('../config/helpers');

/* GET ADDRESSES BY USER ID */
router.get('/:userId', function(req, res) {
    let userId = req.params.userId;

    database.table('addresses').filter({ user_id: userId })
        .withFields(['id', 'fullname', 'line1', 'line2', 'city', 'state', 'country', 'phone', 'pincode'])
        .getAll().then(adresses => {
            if (adresses.length > 0) {
                res.json({ addresses: adresses });
            } else {
                res.json({ message: `NO ADDRESES FOUND WITH USER ID : ${userId}` });
            }
        }).catch(err => res.json(err));
});

/* POST ADDRESS */
router.post('/add', function(req, res) {
    let user_id = req.body.user_id;
    let fullname = req.body.fullname;
    let line1 = req.body.line1;
    let line2 = req.body.line2;
    let city = req.body.city;
    let state = req.body.state;
    let country = req.body.country;
    let phone = req.body.phone;
    let pincode = req.body.pincode;

    database.table('addresses').insert({
        user_id: user_id,
        fullname: fullname,
        line1: line1,
        line2: line2,
        city: city,
        state: state,
        country: country,
        phone: phone,
        pincode: pincode
    }).then(msg => {
        res.status(200).json({ message: 'Dirección completada con exito.' });
    }).catch(err => res.json(err));
});

/* DELETE ADDRES BY ID */
router.delete('/:id', function(req, res) {
    let id = req.params.id;
    database.query(`DELETE FROM \`addresses\` WHERE id = ${id}`, function(err, result, fields) {
        if (err) {
            console.err(err.message);
            throw err;
        }
        return result;
    }).then(msg => {
        res.status(200).json({ message: "Delete successful" });
    }).catch(err => res.json(err));
});

/* UPDATE ADDRESS */
router.patch('/:id', async(req, res) => {
    let id = req.params.id;

    let address = await database.table('addresses').filter({ id: id }).get();

    if (address) {
        let fullname = req.body.fullname;
        let line1 = req.body.line1;
        let line2 = req.body.line2;
        let city = req.body.city;
        let state = req.body.state;
        let country = req.body.country;
        let phone = req.body.phone;
        let pincode = req.body.pincode;

        database.table('addresses').filter({ id: id }).update({
            fullname: fullname !== undefined ? fullname : address.fullname,
            line1: line1 !== undefined ? line1 : address.line1,
            line2: line2 !== undefined ? line2 : address.line2,
            city: city !== undefined ? city : address.city,
            state: state !== undefined ? state : address.state,
            country: country !== undefined ? country : address.country,
            phone: phone !== undefined ? phone : address.phone,
            pincode: pincode !== undefined ? pincode : address.pincode
        }).then(msg => {
            res.status(200).json({ message: 'Dirección autualizada con exito.' });
        }).catch(err => res.json(err));
    }


});

module.exports = router;