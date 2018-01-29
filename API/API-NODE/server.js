var express = require('express');
var app = express();

app.get('/', function (req, res) {

    // config for your database
    
    //localdatabase i.e SQLExpress
    var sql = require("mssql/msnodesqlv8");
    
    var config = {
        database: 'MyApp',
        server: 'localhost',
        options: {
            trustedConnection: true
        }
    };

    // Sql Server conncation
    // var sql = require("mssql");
    // var config = {
    //     user: '',
    //     password: '',
    //     server: '',
    //     database: '',
    // };

    //connect to your database
    sql.connect(config, function (err) {

        if (err) console.log(err);

        // create Request object
        var request = new sql.Request();

        // query to the database and get the records
        request.query('select * from test', function (err, recordset) {

            if (err) console.log(err)

            // send records as a response
            res.send(recordset);

        });
    });
   
});

var server = app.listen(8080, function () {
    console.log('Server is running..');
});




