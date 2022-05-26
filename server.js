const express = require('express');
const app = express();
const http = require('http');
const cors = require("cors");
const { Server } = require("socket.io");

app.use(cors());

// const {Server} = require("socket.io");

const server = http.createServer(app);

const io = new Server(server,{
    cors: {
        origin: "http://localhost:3000",
        methods: ["GET", "POST"],
    },
});

io.on("connection", (socket)=>{
    console.log(`User connected: ${socket.id}`);
    socket.on("join_room", (data)=>{
        socket.join(data);
        console.log(`User with id: ${socket.id} joined room ${data}`);
    });
    socket.on("send_message", (data)=>{
        socket.to(data.room).emit("receive_message", data);
    });
    socket.on("disconnect", ()=>{
        console.log("user disconnected", socket.id);
    });

});

server.listen(3001,()=>{
    console.log("SERVER IS RUNNING");
<<<<<<< HEAD
});
=======
});
>>>>>>> b536f4cfb27d0c68a5bda225898c48034af693cc
