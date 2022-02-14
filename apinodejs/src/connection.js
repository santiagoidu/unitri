const mongoose = require('mongoose')

mongoose.connect('mongodb://localhost:27017/storedb', {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useCreateIndex: true
}).then(db => console.log('Connection establishe successfully'))