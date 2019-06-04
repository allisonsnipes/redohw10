//require dependencies
const mysql = require("mysql");
const inquirer = require("inquirer");
const fs = require("fs");
require("console.table"); //no need to intialize

//set up sql connection for mysql and local server
const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "nodeUser", //username
    password: "", //password
    database: "b2" //name of db
})

//being able to throw errors
connection.connect(function(err) {
    if (err) throw err
    console.log("connection working: " + connection.threadId);
    show();
})

function show() {
    //start first with the connection.query
    connection.query("SELECT * FROM ps", function(err, data) {
        if (err) throw err
        console.table(data);
        sku();
        buy();
        // console.log("success");
    })
}

function sku() {
    inquirer.prompt([{
        type: "skuSelection",
        name: "items",
        message: "Enter the SKU of the item you're interested in."
    }]).then(function(data) {
        console.log(data);
    })
}

function buy() {
    inquirer.prompt([{
        type: "buyingSelection",
        name: "items",
        message: "How many items do you want to buy?"
    }]).then(function(data) {
        console.log(data);
    })


}