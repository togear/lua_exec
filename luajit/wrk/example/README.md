# wrk
[Wrk](https://github.com/wg/wrk) Modern HTTP benchmarking tool
##Usage
`example`
``./wrk -c1 -t1 -d10s -s example/count.lua  http://10.10.100.33/index.html --header "Host: www.test.com"``

## Contents
*[put_test](#put_header)
*[modify_http](#modify_path_header)

##put_test
`wrk.lua` use to put  benchmark

##modify_http
`count.lua` add HTTP Header X-Counter to each request
