let mongoose = require('mongoose')

let productShema = mongoose.Schema({
    name: {
        type: String,
        required: true,
    },
    price: Number,
    stock: String,
    create: {
        type: Date,
        default: Date.now
    }
});


let Product = module.exports = mongoose.model('product', productShema);

//cada vez que hagamos una peticion get se ejecuta esto
module.exports.get = function(callback, limit) {
    Product.find(callback).limit(limit);
}