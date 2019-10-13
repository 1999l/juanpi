/**
 * 边写常用的函数：库
 * 作者：昊昊
 * 日期：
 * github：
 * 上线项目：
 */

function ma(x) {
    let html = '';
    let arr = 'qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890';
    // console.log(arr.length);

    for (let i = 0; i < x; i++) {
        n = parseInt(Math.random() * arr.length);
        html += '<span>' + arr[n] + '</span>';
    }
    return html;
}
//随机生成背景颜色
function bj() {
    let html = '#';
    let arr = 'abcdef1234567890';
    // console.log(arr.length);

    for (var i = 0; i < 6; i++) {
        n = parseInt(Math.random() * arr.length);
        html += arr[n];
    }
    return html;
}
//随机倾斜度
function xie() {
    let html = '';
    let a = parseInt(Math.random() * 90) - 45;
    html = a + 'deg';
    return html;
}
//给每一个字母添加旋转和颜色
function zhuan(a) {
    let ma = document.querySelector('.ma');
    let span = ma.querySelectorAll('span');
    for (let i = 0; i < a; i++) {
        let b = 'rotate(' + xie() + ')';

        span[i].style.transform = b;
        span[i].style.color = bj();
    }
}



//生成四位数随机验证码 ：4位随机数 0-9之间的数字，取4个拼接
function randomCode() {
    var html = '';//存拼接的验证码
    for (var i = 0; i < 4; i++) {
        html += parseInt(Math.random() * 10);//0-9
    }
    return html;
}
//生成随机颜色
function randomColor(type) {
    var color = '';
    if (type == 16) {
        var num = '1234567890abcdef';
        color += '#';
        for (var i = 0; i < 6; i++) {
            var mo = parseInt(Math.random() * num.length);//0-length-1之间随意整数
            color += num[mo];
        }

    } else if (type == 'rgb') {
        var r = parseInt(Math.random() * 266);
        var g = parseInt(Math.random() * 266);
        var b = parseInt(Math.random() * 266);
        var color = 'rgb(' + r + ', ' + g + ', ' + b + ')';
    }
    return color;

}

//四位数随机验证码：带字母(大小写)和数字组合
function randomNum() {
    var html = '0987654321zxcvbnmlkjhgfdsaqwertyuiopZXCVBNMLKJHGFDSAQWERTYUIOP';
    var code = '';//存拼接字符串
    for (var i = 0; i < 4; i++) {
        var ran = parseInt(Math.random() * html.length);
        code += html[ran];
    }
    return code;
}


//缓慢回到顶部
function backtoTop() {
    var timer = setInterval(function () {
        var juliTop = window.scrollY;
        var x = parseInt(juliTop / 16);
        if (x <= 0) {
            clearInterval(timer);

        }
        window.scrollBy(0, -x);
    }, 30)
}


//循环绑定点击事件，点击的那个高亮
function forBinding(aLis) {
    for (var i = 0; i < aLis.length; i++) {
        aLis[i].index = i;//获取索引值
        aLis[i].onclick = function () {
            for (var j = 0; j < aLis.length; j++) {//排他，先使所有的class名为空
                aLis[j].className = '';
            }
            this.className = 'active';//为点击的那个添加有特殊样式的类名
        }
    }
}


//滑到相应的楼层，对应的按钮高亮
function slideHeight() {
    window.onscroll = function () {
        var gdjuli = Math.ceil(window.scrollY);//滚动距离
        for (var i = 0; i < lous.length; i++) {
            if (gdjuli >= parseInt(window.innerHeight) * i) {
                for (var j = 0; j < btns.length; j++) {
                    btns[j].className = '';
                }
                btns[i].className = 'active';

            }
        }

    }

}
//将对象转换成字符串
function objToStr(obj) {
    for (var key in obj) {
        str += key + '=' + obj[key] + '&';
    }
    return str.slice(0, -1);
}

//将网站url，提取参数部分做成对象
function tiqu(str) {
    var obj = {};
    var str1 = str.split('?')[1];
    var str2 = str1.split('&');
    for (var i in str2) {
        var arr = str2[i].split('=');
        obj[arr[0]] = arr[1];

    } return obj;
}

function getStyle(ele, attr) {//传参的时候attr需要加‘’再传进去
    if (getComputedStyle(ele, false)) {
        return getComputedStyle(ele, false)[attr];
    } else {
        return ele.currentStyle(attr);
    }
}


//获取和设置行内样式的方法
//假设：css(box,width) 获取宽度； css(box,width,'500px') 设置宽度
// function css() {
//     //判断实参的个数：如果传过来两个参数，证明想获取行内样式，如果传过来三个参数，证明想设置行内样式
//     if (arguments.length == 2) {
//         //获取 box.style.width
//         return arguments[0].style[arguments[1]];
//     } else if (arguments.length == 3) {
//         //设置 box.style.height = '400px';
//         arguments[0].style[arguments[1]] = arguments[2];
//     }
// }

//封装一个函数：能够获取元素的样式(行内和非行内)，还能设置元素的样式（行内）
function css() {
    var ele = arguments[0];
    var attr = arguments[1];
    if (arguments.length == 2) {
        //获取样式
        if (getComputedStyle(ele, false)) {
            //证明在主流浏览器下：IE9+ 和 主流的浏览器
            return getComputedStyle(ele, false)[attr];
        } else {
            //低版本IE:IE678
            return ele.currentStyle(attr);
        }
    } else if (arguments.length == 3) {
        //设置样式
        // box.style.display = 'block';
        var val = arguments[2];
        ele.style[attr] = val;
    }

}

//通过id获取元素
function getid(id) {
    return document.getElementById(id);
}

//封装一个函数实现获取某个范围内的随机数  min-max 100 - 999
function ranNum(min, max) {
    //Math.random() 0-1 不包含1
    // return Math.random()*max + min;
    return parseInt(Math.random() * (max - min + 1)) + min;//Math.random()为0的时候，最小的时候，等于min
}

function tab(btns, divs, cln) {
    //参数一：btns代表标题；参数二：divs代表内容块；参数三：cln代表高亮的样式
    for (var i = 0; i < btns.length; i++) {//循环在前，点击在后，里面的i早就已经循环结束，变成4.所以不能通过i拿到点击li的对应下标了，才需要绑定索引记录下标值
        //绑定索引：
        btns[i].index = i;
        btns[i].onmouseover = function () {
            // console.log(666);
            //上面：鼠标经过哪个就让哪个li高亮
            //this：当前的那个
            // console.log(this.innerHTML);
            //排他
            for (var j = 0; j < btns.length; j++) {
                btns[j].className = '';
                divs[j].style.display = 'none';
            }
            this.className = cln;
            //下面：盒子要跟着当前的那个li显示
            // console.log(i);
            console.log(this.index);
            divs[this.index].style.display = 'block';
        }
    }
}
function strToObj(str) {
    var json = {};//准备用来存对象的
    var data = '';//存参数：key0=0&key1=1&key2=2
    if (str.indexOf('?') >= 0) {
        //含有问号？，证明是一个完整的url，先截掉？前面的部分
        data = str.slice(str.indexOf('?') + 1);
    } else {
        data = str;
    }
    //字符串转成对象：key0=0&key1=1&key2=2
    var arr1 = data.split('&');///["key0=0", "key1=1", "key2=2"]
    arr1.forEach(function (item) {
        var arr2 = item.split('=');//['key0','0']
        json[arr2[0]] = arr2[1];
    });
    // console.log(json);
    return json;

}

//封装方法实现字符串转成对象：字符串的格式是key0=0&key1=1&key2=2


function objToStr(obj) {//传进来一个对象，拼接成指定的格式 key0=0&key1=1&key2=2
    var html = '';//存拼接好的字符串
    for (var key in obj) {
        html += key + '=' + obj[key] + '&';//key0=0&key1=1&key2=2
    }
    return html.slice(0, -1);
}

function toDb(num) {
    //补零
    if (num < 10) {
        return '0' + num;
    } else {
        return '' + num;
    }
}

function getTime() {
    //获取时间返回即可
    // var obj = {};//创建一个空对象，准备用来存储相关的时间信息
    var time = new Date();//获取时间戳
    var year = time.getFullYear();//年
    var mon = time.getMonth() + 1;//月 0-11
    var date = time.getDate(); //日
    var hour = time.getHours();//时
    var min = time.getMinutes();//分
    var sec = time.getSeconds();//秒
    var week = time.getDay();//星期几 0-6

    //判断星期几
    var w = '天一二三四五六';
    w = '星期' + w.charAt(week);
    // switch (week) {
    //     case 0:
    //         w = '天';
    //         break;
    //     case 1:
    //         w = '一';
    //         break;
    //     case 2:
    //         w = '二';
    //         break;
    //     case 3:
    //         w = '三';
    //         break;
    //     case 4:
    //         w = '四';
    //         break;
    //     case 5:
    //         w = '五';
    //         break;
    //     case 6:
    //         w = '六';
    //         break;
    // }
    // w = '星期' + w;

    return {
        years: year,
        mons: toDb(mon),
        dates: toDb(date),
        hours: toDb(hour),
        mins: toDb(min),
        secs: toDb(sec),
        weeks: w
    };
}

function secChang(num) {//接收一个秒数，转成：xx天xx时xx分xx秒
    var sec = num % 60;//秒数
    var min = parseInt(num / 60) % 60;//分
    var hour = parseInt(num / 60 / 60) % 24;//小时
    var day = parseInt(num / 60 / 60 / 24);//天数
    return {
        days: day,
        hours: hour,
        mins: min,
        secs: sec
    }
}

//兼容处理
function firstChild(ele) {
    if (ele.firstElementChild) {
        //证明在高级浏览器下面：谷歌、火狐、欧朋、苹果、IE9+
        return ele.firstElementChild;
    } else {
        return ele.firstChild;
    }
}

//敏感词过滤：
function filterStr(str) {//留言板记得要过滤内容再提交
    //过滤敏感词
    var arr = ['反清复明', '操', 'fuck', '小学生', '垃圾'];
    arr.forEach(function (item) {
        var reg = new RegExp(item, 'ig');
        str = str.replace(reg, '***');
    });
    return str;
}
//正则验证调用方法
function checkInput(opt) {
    opt.ele.onblur = function () {
        var val = this.value.trim();
        if (vall) {//非空验证
            var str = `checkReg.${opt.type}(val)`;
            var isok = eval(str);//将字符串转换成js代码
            if (isok) {
                opt.inf.innerHTML = opt.checkYes;
                opt.inf.style.color = '#58bc58';

            } else {
                opt.inf.innerHTML = opt.checkNo;
                opt.inf.style.color = 'red';
            }
        } else {
            opt.inf.innerHTML = opt.noval;
            opt.inf.style.color = 'red';
        }
    }

}
/*
 checkInput({
            ele: ainputs[0],调用的节点
            inf: infs[0],提示显示的节点
            type: 'email',调用的哪个验证
            noval: '请输入邮箱地址',验证为空是的提示
            checkYes: '邮箱验证通过',验证通过的提示
            checkNo: '邮箱验证不通过'验证不通过格式不对时的提示
        });

        
*/



/*
 	表单验证的方法： 调用里面的子功能  (json对象里面有很多子功能)
 	var checkReg = {
 		tel : function() {}
 	}
 	
 	调用方法：
 	checkReg.tel();
 	
*/

var checkReg = {
    trim: function (str) { //去掉前后空格
        var reg = /^\s+|\s+$/g;
        return str.replace(reg, '');
    },
    tel: function (str) { //号码
        var reg = /^1[3-9]\d{9}$/;
        return reg.test(str);
    },
    email: function (str) { //邮箱正则:a_a2-+.s @ a_a+2-.s  .s_a2
        var reg = /^\w+([\-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/; //网上推荐
        return reg.test(str);
    },
    idcard: function (str) { //身份证
        var reg = /^(\d{17}|\d{14})[\dX]$/;
        return reg.test(str);
    },
    psweasy: function (str) { //6-18位首字母开头
        var reg = /^[a-zA-Z]\w{5,17}$/;
        return reg.test(str);
    },
    pwwagain: function (str1, str2) { //确认密码
        return str1 === str2; //全等 恒等
    },
    urladr: function (str) { //路径：网址规则
        var reg = /[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+\.?/;
        return reg.test(str);
    },
    name: function (str) { //账号字母开头,6-20位
        var reg = /^[a-zA-Z][\w\-]{5,19}$/;
        return reg.test(str);
    },
    chinese: function (str) { //中文
        var reg = /^[\u2E80-\u9FFF]+$/;
        return reg.test(str);
    },
    birthday: function (str) { //生日
        var reg = /^((((19|20)\d{2})-(0?[13-9]|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/;
        return reg.test(str);
    }
}

function cloneDeep(obj) {//深度拷贝
    var str = JSON.stringify(obj);
    var newobj = JSON.parse(str);
    return newobj;
}

/*
	运动框架封装：startMove()过渡    jq animate()
	最终版：多对象，多属性，链式运动框架(运动队列)
	参数一：对象名
	参数二：属性，目标值  键名：属性名，键值：目标值    {'width':200,'heigth':400}  实现：宽度和高度一起改变，宽度变成200，高度变成400
	参数三：回调函数(可选参数)
 */

function startMove(obj, json, fnend) {

    clearInterval(obj.timer); //防止定时器叠加
    obj.timer = setInterval(function () {

        var istrue = true;

        //1.获取属性名，获取键名：属性名->初始值
        for (var key in json) { //key:键名   json[key] :键值
            //			console.log(key); //width heigth opacity
            var cur = 0; //存初始值

            if (key == 'opacity') { //初始值
                cur = css(obj, key) * 100; //透明度
            } else {
                cur = parseInt(css(obj, key)); // 300px  300  width heigth borderwidth px为单位的

            }

            //2.根据初始值和目标值，进行判断确定speed方向，变形：缓冲运动
            //距离越大，速度越大,下面的公式具备方向
            var speed = (json[key] - cur) / 6; //出现小数
            speed = speed > 0 ? Math.ceil(speed) : Math.floor(speed); //不要小数部分，没有这句话或晃动

            //保证上一个属性全部都达到目标值了
            if (cur != json[key]) { //width 200 heigth 400
                istrue = false; //如果没有达到目标值，开关false
            } else {
                istrue = true; //true true
            }

            //3、运动
            if (key == 'opacity') {
                obj.style.opacity = (cur + speed) / 100; //0-1
                obj.style.filter = 'alpha(opacity:' + (cur + speed) + ')'; //0-100
            } else {
                obj.style[key] = cur + speed + 'px'; //针对普通属性 left  top height 
            }

        }

        //4.回调函数:准备一个开关,确保以上json所有的属性都已经达到目标值,才能调用这个回调函数
        if (istrue) { //如果为true,证明以上属性都达到目标值了
            clearInterval(obj.timer);
            if (fnend) { //可选参数的由来
                fnend();
            }
        }

    }, 30); //obj.timer 每个对象都有自己定时器

}


//封装ajax

/*
    jq：ajax

    $.ajax({ //配置参数
        type : 'get',必填
        url : xxx,必填
        data : {//选填
            name:'',
            price:''
        },
        async : true,//选填
        success : function(str) {
            //成功的回调
        },
        rejected : function(data) {
            //失败的回调
        }
    });
*/

function ajax(opt) {
    //默认参数
    let defaultOpt = {
        data: '',
        asyn: true,
        error: null
    }

    //替补方案
    Object.assign(defaultOpt, opt);//后面都用defaultOpt

    //1.创建对象
    let xhr = new XMLHttpRequest();

    //2.写好参数，准备工作  open()
    if (defaultOpt.type.toLowerCase() == 'get') {
        //get请求
        if (defaultOpt.data) {
            //有数据，把数据拼接在url
            defaultOpt.url = defaultOpt.url + '?' + objToStr(defaultOpt.data);
        }
        xhr.open('get', defaultOpt.url, defaultOpt.asyn);
        xhr.send(null);
    } else {
        //post请求
        xhr.open('post', defaultOpt.url, defaultOpt.asyn);
        let data = objToStr(defaultOpt.data);
        xhr.setRequestHeader('content-type', "application/x-www-form-urlencoded");//请求头
        xhr.send(data);
    }
    //4.接收数据
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                //成功
                defaultOpt.success(xhr.responseText);//实参
                // console.log(xhr.responseText);

            } else {
                //失败
                if (defaultOpt.error) {
                    defaultOpt.error(xhr.status);//实参:http状态码

                }
            }
        }
    }




}




function ajax2(opt) {
    function extend(obj1, obj2) {
        for (var key in obj2) {
            obj1[key] = obj2[key];
        }
    }

    //默认参数
    var defaults = {
        async: true,
        data: ''
    }

    //后面使用默认参数
    extend(defaults, opt);

    var xhr = new XMLHttpRequest();
    if (defaults.type.toLowerCase() == 'get') {
        //get请求
        if (defaults.data) {
            defaults.url += '?' + defaults.data;
        }
        xhr.open(defaults.type, defaults.url, defaults.async);
        xhr.send(null);
    } else {
        //post请求
        xhr.open(defaults.type, defaults.url, defaults.async);
        xhr.setRequestHeader('content-type', 'application/x-www-form-urlencoded');
        xhr.send(defaults.data);
    }

    //接收数据返回
    xhr.onreadystatechange = () => {
        if (xhr.readyState == 4) {
            if (xhr.status == 200) {
                if (defaults.success) {//如果有数据就返回
                    defaults.success(xhr.responseText);
                }
            } else {
                // alert('错误http状态码是：' + xhr.status);
                if (defaults.rejected) {
                    defaults.rejected(xhr.status);//入口。实参
                }
            }
        }
    }
}

function setCookie(key, val, iDay) {
    //key：键名；val：键值；iDay：失效时间
    var now = new Date();
    now.setDate(now.getDate() + iDay);
    document.cookie = key + '=' + val + ';expires=' + now.toUTCString() + ';path=/';//设置一个站点内的文件可以共享此cookie
}

function getCookie(key) {//获取cookie值
    var cookies = document.cookie;//name=malin; pwd=123456
    var arr = cookies.split('; ');//['name=malin','pwd=123456']
    for (var i = 0; i < arr.length; i++) {
        var arr2 = arr[i].split('=');//['name','malin'
        if (key == arr2[0]) {
            return arr2[1];
        }
    };
}


function removeCookie(key) {//删除：设置失效时间为过去的时间，立即失效
    setCookie(key, '', -1);
}




//   封装面向对象函数：表单的非空、正则、ajax三种验证
function Checkinput(opt) {

    this.defaults = {
        success: function () { },
        nullError: function () { },
        reglError: function () { }
    }

    this.option = Object.assign(this.defaults, opt);
    this.checkBox = document.getElementById(this.option.ele);
    this.init();
}

Checkinput.prototype.init = function () {

    $(this.checkBox).on(this.option.event, function () {

        if (this.checkBox.value.trim()) {
            //非空验证->正则->正确性(和数据库数据验证)
            var isok = this.regular(this.option.type).test(this.checkBox.value); //eval() 把字符串转成js代码
            // console.log(this)
            if (isok) { //正则验证通过
                this.option.success();
            } else { //正则验证不通过
                this.option.reglError();
            }
        } else {
            this.option.nullError();
        }
    }.bind(this))

}

Checkinput.prototype.regular = function (type) { //  封装函数正则大全

    if (type == 'chines') { //  中文
        return /^[\u4e00-\u9fa5]{0,}$/
    }
    if (type == 'number') { //  数字
        return /^[0-9]*$/;
    }
    if (type == 'wD') { //数字和英文
        return /^[A-Za-z0-9]+$ 或 ^[A-Za-z0-9]{4,40}$/
    }
    if (type == 'tel') { //  手机号码
        return /^1[3456789]\d{9}$/;
    }
    if (type == 'password') { //  密码(以字母开头，长度在6~18之间，只能包含字母、数字和下划线)
        return /^[a-zA-Z]\w{5,17}$/
    }
    if (type == 'account') { //   帐号是否合法(字母开头，允许5-16字节，允许字母数字下划线)
        return /^[a-zA-Z][a-zA-Z0-9_]{4,16}$/
    }
    if (type == 'userName') { //   帐号是否合法(4-16字节的中文、字母、数字，不能有特殊字符的账号)
        return /^[(a-zA-Z0-9\u4e00-\u9fa5){1}_#]{4,16}$/
    }
    if (type == 'usPassword') {
        return /^(?![^a-zA-Z]+$)(?!\D+$)[a-zA-Z0-9]{6,}$/
    }
    if (type == 'zipCode') { //  邮政编码
        return /^\d{6}$/
    }
    if (type == 'email') { //  邮箱
        return /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/
    }
    if (type == 'idCard') { //  身份证
        return /^\d{6}(18|19|20)?\d{2}(0[1-9]|1[12])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/
    }
    if (type == 'date') { //  验证日期格式YYYY-MM-DD
        return /^[1-9]\d{3}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$/
    }
    if (type == 'QQ') { //  QQ号
        return /^[1-9][0-9]{4,}$/
    }
    if (type == 'url') { //  网址
        return /^(https?|ftp|file):\/\/[-A-Za-z0-9+&@#/%?=~_|!:,.;]+[-A-Za-z0-9+&@#/%=~_|]$/
    }

};
//  调用方法
// new Checkinput({
//     ele: 'userUID',
//     event:'blur',
//     type: 'userName',
//     success: function () {},
//     nullError: function () {},   内容为空时
//     reglError: function () {}    正则不通过时
// });



function carNumber1() {
    let username = getCookie('username');
    ajax({
        type: 'get',
        url: '../api/car.php',
        data: {
            username,
            goodcar: 'changdu'
        },
        success: str => {
            console.log(str);
            let arr = JSON.parse(str);

            let num3 = 0;

            for (let i = 0; i < arr.list.length; i++) {
                num3 += arr.list[i].num * 1;


            }
            $('#tool_car_num').text(num3);
        }
    });
}

function carNumber() {
    let username = getCookie('username');
    ajax({
        type: 'get',
        url: '../api/car.php',
        data: {
            username,
            goodcar: 'changdu'
        },
        success: str => {
            console.log(str);
            let arr = JSON.parse(str);

            let num3 = 0;

            for (let i = 0; i < arr.list.length; i++) {
                num3 += arr.list[i].num * 1;


            }

            $('.car .tb em').text(num3);

            // creat(str);
        }
    });

}