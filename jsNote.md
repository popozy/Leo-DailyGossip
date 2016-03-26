/**
* @Author:      Kapon Leo
* @DateTime:    2016-03-26 21:02:12
* @Description: 整理自《js入门经典》V5
*/

1.js 内置对象
    1.1 常见内置对象：String, Math, Array, Date对象
    1.1 String
        var string = new String(“hello world”); or var string = “hello world” 后者在后台进行对象转换
        string’s attr: length没有’\0’结尾

        indexOf(目标子字符串，起始位（基于0）)-正序查找
        lastIndexOf(同上）-倒序查找
        //返回首次查到的首字母位置，基于0，区分大小写
        // return value: not found: -1
        // js严格区分大小写



2.浏览器的对象组成
    2.0 introduction
        window -对应浏览器窗口 方法：alert() prompt()
        document-页面本身：write()
        页面上写入的html代码标签对应的对象，eg. img。
        ps.
        DOM: Document Object Model（文本对象模型）
        BOM: Browser Object Model: 浏览器为js提供的对象集合
        区分 document and window :
        document: html 页面
        window ： 浏览器串口或者框架和相关所有内容（滚动条和导航栏图标，包含 document 对象）
        BOM对象：内置对象：Date String 人工创建使用; Math 直接使用—————html代码的对象: img人工创建使用

    2.1 window Object
        全局对象，所有全局对象和全局函数都是 window 对象的方法和属性（属性也可能是对象如：
        document, history， screen, navigator（浏览器信息）， location(当前页面的位置信息)
        在全局作用于定义的任何函数或变量都会成为 window 对象的方法和属性
    2.2 history Object: 方法： go(x) 前进（+）或者后退（-）Math.abs(x)个页面； back()； forward();
    2.3 navigator Object: Browser sniffing, feature detection.
        HTML5新增对象：geolocation 获取和利用设备和计算机的位置 核心方法：navigator.geolocation.getCurrentPosition(); 参数：1，callback function(); 方法工作成功后返回该函数 2.callback function2() 失败时返回值 1，2，3
    2.4 screen Object. width, height 获取当前浏览器的垂直水平尺寸。 colorDepth表示客户机屏幕使用的色彩位数
    2.5 document Object:
        document.images : <img alt="" name="" src=""/>
        document.links : <a href = ""/>

3.js封装对象

4.ajax异步Javascript和xml

5.cookie

6.正则表达式

7.浏览器跨域问题

8.B/S AND C/S

9.数据类型与操作

10.JSON（JavaScript Object Natation）
    10.0 特点：格式容易进行串行化和反串行化，可以很好地表示对象及其数据。
         区别：javascript是一种编程语言 vs JSON是一种数据格式
    10.1 串行化：对象转化为字符串表示的过程。
        串行化的对象中只有属性。
    10.2 XML
        Web服务使用XML与其他Web服务和其他计算机进行交流。js使用XML与web应用程序的服务器进行通信。
        使用声明性语法，易于阅读；但给有效数据在数据传输过程中所占的有效负载太低。
    10.3 introduction
        是js的一个子集，使用js几个语法模式来组织构造数据。
        可以表示的对象：简单值，对象，数组
        10.3.1 简单值
            只能带双引号的字符串；
            数字，布尔值，null表示为各自的字面量
11.XML
