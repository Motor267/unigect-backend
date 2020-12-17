const express = require('express');
const router = express.Router();
const { database } = require('../config/helpers');

/* GET ALL ORDERS */
router.get('/', function(req, res) {
    database.table('orders_details as od')
        .join([{
                table: 'orders as o',
                on: 'o.id = od.order_id'
            },
            {
                table: 'products as p',
                on: 'p.id = od.product_id'
            },
            {
                table: 'users as u',
                on: 'u.id = o.user_id'
            }
        ])
        .withFields([
            'o.id',
            'p.title as name',
            'p.description',
            'p.price',
            'u.username'
        ])
        .sort({ id: 1 })
        .getAll()
        .then(orders => {
            if (orders.length > 0) {
                res.status(200).json(orders);
            } else {
                res.json({ message: 'No orders found' });
            }
        }).catch(err => console.log(err));

});

/* GET ORDERS BY USER ID */
router.get('/:id', function(req, res) {
    const userId = req.params.id;

    database.table('orders_details as od')
        .join([{
                table: 'orders as o',
                on: 'o.id = od.order_id'
            },
            {
                table: 'products as p',
                on: 'p.id = od.product_id'
            },
            {
                table: 'users as u',
                on: 'u.id = o.user_id'
            }
        ])
        .withFields([
            'o.id',
            'p.image',
            'p.title as name',
            'p.description',
            'p.price',
            'u.username'
        ])
        .filter({ 'u.id': userId })
        .getAll()
        .then(orders => {
            if (orders.length > 0) {
                res.status(200).json(orders);
            } else {
                res.json({ message: 'No orders found' });
            }
        }).catch(err => console.log(err));
});

/* PLACE A NEW ORDER */
router.post('/new', function(req, res) {
    let { userId, products } = req.body;

    if (userId !== null && userId > 0 && !isNaN(userId)) {
        database.table('orders')
            .insert({
                user_id: userId
            }).then(newOrderId => {

                if (newOrderId > 0) {
                    products.forEach(async(p) => {
                        let data = await database.table('products')
                            .filter({ id: p.id })
                            .withFields(['quantity'])
                            .get();

                        let inCart = p.incart;

                        //Deducir el numero de piezas pedidas de la cantidad de columnas en la bd
                        if (data.quantity > 0) {
                            data.quantity = data.quantity - inCart;

                            if (data.quantity < 0) {
                                data.quantity = 0;
                            }
                        } else {
                            data.quantity = 0;
                        }

                        //Insertar detalles de pedidos en un nuevo ID
                        database.table('orders_details')
                            .insert({
                                order_id: newOrderId,
                                product_id: p.id,
                                quantity: inCart
                            }).then(newId => {
                                database.table('products')
                                    .filter({ id: p.id })
                                    .update({
                                        quantity: data.quantity
                                    }).then(succesNum => {}).catch(err => console.log(err));
                            }).catch(err => console.log(err));

                    });
                } else {
                    res.json({ message: 'new order failed while adding order details', success: false })
                }
                res.json({
                    message: `Order successfully placed with order id ${newOrderId}`,
                    success: true,
                    order_id: newOrderId,
                    products: products
                });

            }).catch(err => console.log(err));
    } else {
        res.json({
            message: 'New order failed',
            success: false
        });
    }
});

/* FAKE PAYMENT GATEWAY CALL */
router.post('/payment', function(req, res) {
    setTimeout(() => {
        res.status(200).json({ success: true });
    }, 3000);
});

module.exports = router;