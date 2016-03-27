1.js 内置对象
    1.1 常见内置对象：String, Math, Array, Date对象
    1.1 String
        var string = new String(“hello world”); or var string = “hello world” 后者在后台进行对象转换
        string’s attr: length没有’\0’结尾

        indexOf(目标子字符串，起始位（基于0）)-正序查找CDR4
        lastIndexOf(同上）-倒序查找
        //返回首次查到的首字母位置，基于0，区分大小写
        // return value: not found: -1
        // js严格区分大小写 B

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
        document.cookie

3.js封装对象

4.ajax异步Javascript和xml
    4.1 http头
    4.2 XMLHttpRequest 对象
        创建： var request = new XMLHttpRequest();
        method:
            request.open(requestType, url, async); （请求类型，请求目标的url，是否异步发出请求），async default value: true;
            requestType："GET" 请求不包含请求， request.send(null);
                         "POST"
            request.send(); send中是字符串，包含随请求一起发送的请求体。
            request.onreadystatechange(); 异步请求时的readystatechange事件处理程序
        Object:
            request.status 服务器返回请求的状态码
            request.responseXML
            request.readyState 异步过程中请求生存期中的状态。
            0-创建对象，但未open
            1-open（）调用，未send（）
            2-send（），状态和标题已接受并可用
            3-接收到来自服务器的响应
            4-接受完成请求数据
            ？即使请求完成，也可能因为请求的服务器端发生错误而接收不到需要的信息。因此需要检查request.status

        eg.请求获得一个myTextFile.txt文件并返回结果。
            var request = new XMLHttpRequest();
            request.open("GET", "http://localhost/myTextFile.txt", false);
            request.send(null);

            var status = request.status;
            case status:
                404: not found;
                200: normal;
                other: error code
        4.3 异步
            每当request.status 发生改变的时候，会触发readystatechange事件，调用onreadystatechange事件处理程序。
        4.4 构建Ajax模块来进行代码重用
            eg.
                HttpRequest模块-属性：request包含底层XMLHttpRequest对象，有send（）方法。
                构造函数参数：请求服务器的url， callback
                构造函数函数体：
                    初始化request对象用new XMLHttpRequest对象；
                    open初始化请求对象，
                    绑定状态变更处理函数给onreadystatechange来处理readystatechage事件，并在其中callback或者处理error
        4.5* ajax注意事项
            安全性
                同源策略：protocol domain port??
                Crossing-Origin Resource Sharing:浏览器和服务器发送自定义http标题
            可用性：
                浏览器历史记录不能保存ajax使用过程中发送请求的对象-->back按钮失效？
                使用内嵌框架支持back和forward按钮的表单
                处理延迟（更好的用户体验）自行设计ui，js控制display属性解决
                js被禁用ajax失败的正常退出---！！！！经验法则：先创建网页，在添加ajax
5.cookie
    5.1 name, value
        name用来引用cookie，value包含cookie的信息
        eg.("http://mooc.study.163.com/smartSpec/detail/85002.htm")部分cookie
        videoResolutionType=3; videoVolume=0.8; _ntes_nnid=0b9f47d95f4e083b3a209a2fad852be4,1456762352157; _ntes_nuid=0b9f47d95f4e083b3a209a2fad852be4; NTES_REPLY_NICKNAME=m18868108662_1%40163.com
    5.2 expires 过期时间
        eg.
        var expire = new Date();
        expire.setmonth(expire.getMonth()+6);
        document.cookie = "UserName=Paul; expires=" + expire.toUTCString() + ";";

        cookie在规定过期时间之前就过期因素：用户删除cookie，达到cookie的上限
    5.3 Path
        原理：在同一个domain下不同path下的页面的cookie不能相互读取和修改，只能每个页面的cookie只能访问和修改当前路径和当前路径的子路径下页面的cookie
        作用与使用方法：通过设置各个页面的path设置，使若干个页面相互可以访问和修改cookie。

    5.4 domain
        类比path，使domain相同的sub domain下的页面可以共享cookie。
    5.5 scure(data type: bool)
        ture : 仅发送cookie给尝试使用安全通道检索他的web服务器
        false：每次都发送不考虑安全性。
        --ssl？
    5.6 设置cookie value: 不能直接使用某些字符（“；”）。使用内置的escape(),unescape()函数进行转换。
        escape()方法将非字母和数字字符转换为Latin-1字符集对应的十六进制编码并加上%前缀。
        ps. space = %20   ";" = %3B

    5.7 获取cookie的值
        document.cookie 返回某个路径下的所有cookie的字符串。
        获取某确定cookie的value：在document.cookie中通过字符串操作索引。
        string.indexOf  未找到返回值为-1。可能涉及到的方法：indexOf(), substring(), escape().

    5.8 the limit of cookie
        a. the user may forbid the cookie of his browser
           js 可以通过检查是否启用cookie（setcookie（）和getCookieValue()函数不会报错但是设置之后搜索name/value的结果为null)， 进而进行相关业务逻辑操作
        b. 每个页面可存储的cookie存在上限，每个cookie的name/值对的长度也有限制。解决方案1：每条cookie的name/值对中value存储多个数据。
    5.9 cookie分类
        Session cookies - these are temporary and are erased when you close your browser at the end of your surfing session. The next time you visit that particular site it will not recognise you and will treat you as a completely new visitor as there is nothing in your browser to let the site know that you have visited before
        Persistent cookies - these remain on your hard drive until you erase them or they expire. How long a cookie remains on your browser depends on how long the visited website has programmed the cookie to last
    5.10 cookie 安全性
        the platformor privacy preferency
    5.11 Web存储
        本地存储 Object: localStorage 数据不会丢失，除非被删除
            方法：
                localStorage.setItem("User Name", "Paul");
                var name = localStorage.getItem("User Name");
                localStorage.removeItem("User Name");
                localStorage.clear();
        会话存储 Object: sessionStorage

6.正则表达式*

7.浏览器跨域问题**

8.B/S AND C/S***

9.数据类型与操作*

10.JSON（JavaScript Object Notation）
    10.0 特点：格式容易进行串行化和反串行化，可以很好地表示对象及其数据。
         区别：javascript是一种编程语言 vs JSON是一种数据格式，只定义对象的结构和数据，没有变量,函数和方法。
         eg.
         Object:
         var person = {
            firstName: "John",
            lastName: "Doe",
            age: 30
         };
         JSON:
         {
            "firstName": "John",
            "lastName": "Doe",
            "age": 30
         }
         //json没有变量声明，没有结束的分号（语法）
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
            数字，布尔值，null表示为各自的字面量。
        10.3.2 对象：见 10.0 eg.
        10.3.3 Array
            基本格式：eg.
                var values = ["John", 30, false, null];
                JSON: ["John", 30, false, null]
            其他：数组由对象和简单值作为数组项构成，分别按照 3.1 3.2 的方法按array的基本格式完成
    10.4 串行化为JSON
        eg.
        var person = {
            firstName: "John",
            lastName: "Doe",
            age: 30
        };
        var json = JSON.stringify(person);

        则json变量为{"firstName":"John","lastName":"Doe","age":30}
        删除空白，负载被优化，之后可进行发送（到web服务器）或进行存储
    10.5 解析JSON
        eg. 解析 10.4 中json变量为js对象
            var johnDoe = JSON.parse(json);

11.XML

12.HTML5新特性**

13.闭包*（作用域问题）

14.事件（监听，代理等）*

15.表单

16.原型链*

17.分支管理与版本控制
