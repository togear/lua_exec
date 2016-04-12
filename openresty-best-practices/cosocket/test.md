# Linux
* [test](#test)
* [result](#result)
   * [test1](#test1)
   * [test2](#test1)

## test
 `curl -svo /tmp/testhttp://localhost/test -x 127.0.0.1:9000` 
 `curl -svo /tmp/dns  http://localhost/dns -x 127.0.0.1:9000 `

## result
###test1
 `cat /tmp/test`
 `successfully talk to baidu! response first line: HTTP/1.1 200 OK`

###test2
 `cat /tmp/dns`
 `www.baidu.com www.a.shifen.com type:5 class:1 ttl:785
 www.a.shifen.com 61.135.169.125 type:1 class:1 ttl:202
 www.a.shifen.com 61.135.169.121 type:1 class:1 ttl:202`
