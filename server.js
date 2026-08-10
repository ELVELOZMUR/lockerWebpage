const expr = require("express")
const path = require("path")
const fs = require("fs")
const { log } = require("console")
const app = expr()

app.set("view engine", "ejs")

app.use(expr.static(path.join(__dirname, "public")))

app.get("/", function(req, res) {
    res.render("homepage")
})

console.log("running on " + __dirname)
console.log("Express busca los archivos estáticos en:", path.join(__dirname, "public"));

app.listen(5500)