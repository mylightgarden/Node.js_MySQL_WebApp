/*Add your database host information here*/

var mysql = require('mysql');
var pool = mysql.createPool({
  connectionLimit : 10,
  //host            : 

  //user            : 
  //password        : 
  //database        : 
});
module.exports.pool = pool;
