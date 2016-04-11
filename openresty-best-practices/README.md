# Openresty best practice tips


## Table of Contents
* [Contents](#contents)
    * [block ](#lua_basic_grammar) 


###Block
官方有明确说明，Openresty的官方API绝对100% noblock，所以我们只能在她的外面寻找了。我这里大致归纳总结了一下，包含下面几种情况：
# 高CPU的调用（压缩、解压缩、加解密等）
# 高磁盘的调用（所有文件操作）
# 非Openresty提供的网络操作（luasocket等）
# 系统命令行调用（os.execute等）

`这些都应该是我们尽量要避免的。理想丰满，现实骨感，谁能保证我们的应用中不使用这些类型的API？
没人保证，我们能做的就是把他们的调用数量、频率降低再降低，如果还是不能满足我们需要，那么就考虑把他们封装成独立服务，
对外提供TCP/HTTP级别的接口调用，这样我们的Openresty就可以同时享受异步编程的好处又能达到我们的目的。`
