const mongoose = require('mongoose');
const playerSchema = new mongoose.Schema({
    playername: {
        type: String,
        trim:true,
    }, socketId: {
        type: String,
    }, points: {
        type: Number,
        default: 0,
    },
    playerType:{
        required:true,
        type:String,
    }
});
module.exports=playerSchema;