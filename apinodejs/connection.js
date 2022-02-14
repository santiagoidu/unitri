const mongoose = require('mongoose')

mongoose.connection('mongodb://localhost:27017/storedb', {
    useNewUrlPaerser: true,
    useUnifiedTopology: true,
    useCreateIndex: true
}).then(db => console.log('Connection establishe successfully'))



