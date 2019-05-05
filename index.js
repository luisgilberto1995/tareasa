const express = require('express');
const port = 3000;
const app = express();

app.listen(port, function () 
{
  console.log("Servidor en el puerto "+ port +" .");
});

app.get('/', function (req, res) 
{
  res.send('<h1>Repositorio</h1>' + 
  "<a href=\"/descarga\">" +
  "get(repositorio)" +
  "</a>")

})

app.get('/descarga',function(req,res)
{
  var str = process.env.REPO;
  var nombreRepo = str.split(".git");
  console.log(nombreRepo[0]+"/archive/master.zip");
  res.send('<h1>Link de descarga</h1><a href=\"'+nombreRepo[0]+"/archive/master.zip\">Descargar</a>");
})

