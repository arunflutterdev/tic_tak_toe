const express = require('express');
const socket = require('socket.io');
const mongoose = require('mongoose');
const http = require('http');
const app = express();
const Room=require('./models/room');

var server = http.createServer(app);
var io = socket(server);

app.use(express.json());

const PORT = process.env.PORT || 3000;
server.listen(PORT, '0.0.0.0', () => {
    console.log(`Server running on port ${PORT}`);
});

const db = "mongodb+srv://arun07160:1234@cluster0.9qvyzii.mongodb.net/?retryWrites=true&w=majority";
mongoose.connect(db)
    .then(() => {
        console.log("Mongodb connection Sucessfull");
        io.on('connection', (socket) => {
            console.log("socket Connected");
            socket.on('createRoom', ({ playername }) => {
                console.log(playername);
            });
        });
    })
    .catch((e) => {
        console.log(e);
    });

    