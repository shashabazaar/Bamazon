const mysql = require("mysql");

const inquirer = require("inquirer");

const connection = mysql.createConnection({
  host: "localhost",

  port: 3306,

  user: "root",

  password: "",
  database: "bamazon"
});

connection.connect(function (err) {
  if (err) throw err;
  console.log("connected as id" + connection.threadId);
  afterConnection();
})

function afterConnection() {
console.log("Welcome To Bamazon!")
  connection.query("SELECT * FROM products", function (err, res) {
    if (err) throw err;
    console.log("~~~~~~~~~~~~~~~~~~~~~~")
    //console.log(res);
    // connection.end();

    for (var i = 0; i < res.length; i++) {
      console.log("ID: " + res[i].id + "|" + "products: " + res[i].product_name + "$" + res[i].price);
    }
    select()
  })
  
}
   function select(){

   inquirer
      .prompt([{
          name: "itemId",
          message: "Enter the id of the product you would like to buy."
        },
        {
          name: "quantity",
          message: "How many would you like to buy?",
          // validate: function (buyAmount) {
          //   if (!isNaN(buyAmount)) {
          //     return true;
          //   } else {
          //     return false;
          //   }
          // }
        }
      ])
      .then(function (answers) {
          // 
          // for (var i = 0; i < answers.length; i++) {
          //   if (results[i].item_name === answer.choice) {
          //     chosenItem = results[i];

          //   }
          // }
          //console.log(answers)
          var stock_quantity;
          var item=answers.itemId;
          var qty=answers.quantity;
          var price=answers.price;
          //console.log(qty)
          var query = connection.query("SELECT * FROM products WHERE ?", {
              id: item},function (err, res) {
      // console.log(res)
          if (qty > res[0].stock_quantity) {
            console.log("Not enough product in stock to fulfill your order.");
           // afterConnection();
      
           } else {
            connection.query(
              "UPDATE products SET ? WHERE ?",
              [{
                  stock: res[0].stock_quantity - answers.quantity,
                  sales: res[0].sales + (res[0].price * answers.quantity)
                },
                {
                  id: answers.itemId
                }
              ],
              function (err, res) {
                console.log("Your order has been placed!");
                console.log("Your total is $" + price * answers.quantity)
                console.log("Thank you for shopping with Bamazon!")
                console.log("~~~~~~~~~~~~~~~~~~~~~~~~~~~")
                //console.log(query.sql);
               


              }
           )
          }
        })
      })
    }