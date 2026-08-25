const http = require('http');
const os = require('os');
console.log("Kubix server starting...");
var handler = function(request, response) {
    console.log( Date.now()+" Received request from "+ request.connection.remoteAddress );
    response.writeHead(200);
    response.end(process.env.BEGRUESSUNG +"\nYou've hit "+os.hostname()+"\n" + "Now its " + Date.now()+"!\nYour Commit Hash is :" + process.env.GIT_SHA);
};
var www = http.createServer(handler);
www.listen(8080);
