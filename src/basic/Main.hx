package basic;

using basic.util.Point;
using basic.util.StringIterator;

import js.Node;
import js.node.Http;
import js.node.http.ServerResponse;
import js.node.http.IncomingMessage;

class Main
{
    static public function main()
    {
        var server = Http.createServer(function (request:IncomingMessage, response:ServerResponse):Void
        {
            response.setHeader("Content-Type","text/plain");
            response.writeHead(200);
            response.end("Hello World\n");
        });

        server.listen(5000,"localhost");

        trace( "Server running at http://127.0.0.1:5000/" );
    }
}

