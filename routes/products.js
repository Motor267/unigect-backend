const express = require('express');
const router = express.Router();
const { database } = require('../config/helpers');

/* GET ALL PRODUCTS */
router.get('/', function(req, res) {
    //Establecer el numero de pagina actual
    let page = (req.query.page !== undefined && req.query.page !== 0) ? req.query.page : 1;
    //Establece el limite de elementos por pagina
    const limit = (req.query.limit !== undefined && req.query.limit !== 0) ? req.query.limit : 10;

    let startValue;
    let endValue;

    if (page > 0) {
        startValue = (page * limit) - limit; //0,10,20,30
        endValue = page * limit;
    } else {
        startValue = 0;
        endValue = 10;
    }

    database.table('products as p')
        .join([{
            table: "categories as c",
            on: `c.id = p.cat_id`
        }])
        .withFields(['c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.id'
        ])
        .slice(startValue, endValue)
        .sort({ id: .1 })
        .getAll()
        .then(prods => {
            if (prods.length > 0) {
                res.status(200).json({
                    count: prods.length,
                    products: prods
                });
            } else {
                res.json({ message: "No products found" });
            }
        })
        .catch(err => console.log(err));
});

/* GET PRODUCTS SEARCH */
router.get('/search/:searchQry', function(req, res) {
    let searchQry = req.params.searchQry;

    database.query(`SELECT id, image, title as name, description, price, cat_id FROM \`products\` WHERE MATCH (title, description) AGAINST ('${searchQry}')`, function(err, result, fields) {
        if (err) {
            console.err(err.message);
            throw err;
        }
        return result;
    }).then(prods => {
        if (prods.length > 0) {
            res.status(200).json(prods);
        } else {
            res.json({ message: `Error query` });
        }
    }).catch(err => res.json(err));
});

/* GET SINGLE PRODUCT */
router.get('/:prodId', function(req, res) {
    let productId = req.params.prodId;
    console.log(productId);

    database.table('products as p')
        .join([{
            table: "categories as c",
            on: `c.id = p.cat_id`
        }])
        .withFields(['c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.images',
            'p.id'
        ])
        .filter({ 'p.id': productId })
        .get()
        .then(prod => {
            if (prod) {
                res.status(200).json(prod);
            } else {
                res.json({ message: `No product found with product id ${productId}` });
            }
        })
        .catch(err => console.log(err));
});

/* GET ALL PRODUCTS FROM ONE PARTICULAR CATEGORY */
router.get('/category/:catName', function(req, res) {
    //Establecer el numero de pagina actual
    let page = (req.query.page !== undefined && req.query.page !== 0) ? req.query.page : 1;
    //Establece el limite de elementos por pagina
    const limit = (req.query.limit !== undefined && req.query.limit !== 0) ? req.query.limit : 10;

    let startValue;
    let endValue;

    if (page > 0) {
        startValue = (page * limit) - limit; //0,10,20,30
        endValue = page * limit;
    } else {
        startValue = 0;
        endValue = 10;
    }

    //Categoria enviada por el url
    const cat_title = req.params.catName;

    database.table('products as p')
        .join([{
            table: "categories as c",
            on: `c.id = p.cat_id WHERE c.title LIKE '%${cat_title}%'`
        }])
        .withFields(['c.title as category',
            'p.title as name',
            'p.price',
            'p.quantity',
            'p.description',
            'p.image',
            'p.id'
        ])
        .slice(startValue, endValue)
        .sort({ id: 1 })
        .getAll()
        .then(prods => {
            if (prods.length > 0) {
                res.status(200).json({
                    count: prods.length,
                    products: prods
                });
            } else {
                res.json({ message: `No products found matching the category ${cat_title}` });
            }
        }).catch(err => res.json(err));
});




module.exports = router;