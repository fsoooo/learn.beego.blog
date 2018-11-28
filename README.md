# beego_Blog

基于Go语言和beego框架 前端使用layui 布局 开发的个人博客系统

## 编译安装说明：


下载安装

    $ go get github.com/fsoooo/beego_blog

加入数据库

   mysql 新建db_beego数据库把根目录 db_beego.sql 导入

修改 app.conf 配置

    #MYSQL地址
    dbhost = localhost
    
    #MYSQL端口
    dbport = 3306
    
    #MYSQL用户名
    dbuser = root
    
    #MYSQL密码
    dbpassword = root
    
    #MYSQL数据库名称
    dbname = db_beego
    
    #MYSQL表前缀
    dbprefix = tb_

 运行

    cd 到 beego_blog 目录 执行
    $ bee run

 浏览器演示

http://localhost:8099 (前台)

http://localhost:8099/admin/login (后台)    账号： admin  密码 :123456


