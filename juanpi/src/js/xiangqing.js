


$('.right').load('youce.html');
$('.header').load('seach.html');
let username = getCookie('username');
if (username) {
    $('.toolbar').load('ding2.html');
    footerJi();
} else {
    $('.toolbar').load('ding1.html');
    $('.b_tab').hide();
}
var str = decodeURI(location.search.slice(1));
console.log(str);
var data = strToObj(str);
console.log(data);
ajax({
    type: 'get',
    url: '../api/liebiao.php',
    data: {
        sid: data.sid,
        cha: 'zhao'
    },
    success: str => {
        console.log(str);

        creat(str);
    }
});
function creat(str) {

    let arr = JSON.parse(str);
    let html = '';
    let html1 = '';
    let html2 = '';
    console.log(arr.list);
    for (let i = 0; i < arr.list.length; i++) {

        html += ` <div class="imglist">
                        <ul>
                            <li class="active">
                                <img src="${arr.list[i].img}"
                                    alt="">
                            </li>
                            <li>
                                <img src="http://s2.juancdn.com/goods/181025/0/4/5bd1684bb6f8ea345919893b_800x800.jpg?iopcmd=thumbnail&type=8&width=400&height=400%7Ciopcmd=convert&Q=88&dst=jpg"
                                    alt="">
                            </li>
                            <li>
                                <img src="https://goods1.juancdn.com/goods/181025/0/b/5bd1684a33b089759862f2c6_800x800.jpg?iopcmd=thumbnail&type=11&height=58&width=58%7Ciopcmd=convert&Q=88&dst=jpg"
                                    alt="">
                            </li>
                            <li>
                                <img src="http://s2.juancdn.com/goods/181025/0/4/5bd1684bb6f8ea345919893b_800x800.jpg?iopcmd=thumbnail&type=8&width=400&height=400%7Ciopcmd=convert&Q=88&dst=jpg"
                                    alt="">
                            </li>
                            <li>
                                <img src="https://goods4.juancdn.com/goods/181025/7/0/5bd1684e33b089703124a7a3_800x800.jpg?imageMogr2/thumbnail/58x58!/quality/88!/format/jpg"
                                    alt="">
                            </li>
                        </ul>
                    </div>
                    <div class="imgpart">
                        <!-- 图片展示 -->
                        <div class="pic">
                            <img src="${arr.list[i].img}"
                                alt="">
                            <!-- 镜片 -->
                            <div class="magnify"></div>
                        </div>
                        <!-- 放大后的图片, 放大后的图片的尺寸要设置为展示图片的倍数（2倍）-->
                        <div class="bigpic">
                            <img src="${arr.list[i].img}"
                                alt="">
                        </div>
                    </div>
                    <div class="baozhang"><span>100%人工质检</span>
                        <span>去哪国包邮低价保障</span>
                        <span>7天无理由退货</span>
                    </div>
                    <div class="sector">
                        <a href="###">收藏</a>
                        <a href="###">分享</a>
                        <a href="###">举报</a>
                    </div><script src="../js/fdj.js">
                    `;
        html1 += `${arr.list[i].title}`;
        html2 += ` <i>￥</i>
                            <span class="jiage">${arr.list[i].price}</span>
                            <span class="ckjia">参考价:￥<em>${arr.list[i].oldprice}</em></span>
                            <span class="djs">${arr.list[i].tempo}</span>`;

    }
    $('.main_left').html(html);
    $('.deal_wrap h2').html(html1);
    $('.jin').html(html2);


}

function footerJi() {



    let username = getCookie('username');
    if (username) {

        ajax({
            type: 'post',
            url: '../api/car.php',
            data: {
                username,
                goodcar: 'huoqu'
            },
            success: str => {
                var arr = JSON.parse(str);
                // console.log(str);
                myFooter(arr);
            }
        });
    }

}


let tabcont = document.querySelector('.tab_cont');

function myFooter(arr) {

    let arr2 = [];
    if (arr.list.length >= 5) {
        for (let i = 0; i < 5; i++) {
            arr2.unshift(arr.list[i]);
        }
    } else {
        for (let i = 0; i < arr.list.length; i++) {
            arr2.unshift(arr.list[i]);
        }
    }


    let list = arr2.map(function (item) {
        return `<li data-id="${item.sid}">
                <div class="prod_pic">
                    <img class="lianjie" src="${item.img}" alt="">
                </div>
                <div class="prod_n">
                    <a href="###" class="lianjie">${item.title}</a>
                </div>
                <div class="price">￥${item.price}</div> /
                <div class="mprice">￥${item.oldprice}</div>
                </div>
            </li>`;
    }).join('');
    tabcont.innerHTML = list;
}

$('.tab_cont').on("click", ".lianjie", function (ev) {
    let sid = ev.target.parentNode.parentNode.dataset.id;


    ajax({
        type: 'post',
        url: '../api/car.php',
        data: {
            sid,
            goodcar: 'cun'
        },
        success: str => {

            // console.log(str);
            let arr = JSON.parse(str);
            let title = arr.list[0].title;
            let oldprice = arr.list[0].oldprice;
            let price = arr.list[0].price;
            let img = arr.list[0].img;
            ajax({
                type: 'post',
                url: '../api/car.php',
                data: {
                    username,
                    sid,
                    title,
                    oldprice,
                    price,
                    img,
                    goodcar: 'cunru',


                },
                success: str => {
                    location.href = 'xiangqing.html?sid=' + sid;
                }
            });

        }
    });

});


$('#jian').click(function () {
    let num = $('#shu').val();
    num--;
    if (num <= 1) {
        num = 1;
    }
    $('#shu').val(num);
});
$('#jia').click(function () {
    let num = $('#shu').val();
    num++;
    $('#shu').val(num);
});
$('#shu').change(function () {
    let num = $('#shu').val();
    if (num <= 1) {
        num = 1;
    }
    num;
    $('#shu').val(num);
});
$('.add_car').click(() => {
    let username = getCookie('username');
    if (username) {
        let sid = data.sid;
        ajax({
            type: 'get',
            url: '../api/liebiao.php',
            data: {
                sid: data.sid,
                cha: 'zhao'
            },
            success: str => {
                // console.log(str);
                let arr = JSON.parse(str);
                let title = arr.list[0].title;
                let oldprice = arr.list[0].oldprice;
                let price = arr.list[0].price;
                let img = arr.list[0].img;
                let num = $('#shu').val();
                let color = $('.color .cur span').text();
                let size = $('.size .cur span').text();

                ajax({
                    type: 'post',
                    url: '../api/car.php',
                    data: {
                        username,
                        sid: data.sid,
                        title,
                        oldprice,
                        price,
                        img,
                        num,
                        color,
                        size,
                        goodcar: 'addgou',


                    },
                    success: str => {
                        // console.log(str);
                        carNumber1();
                        carNumber();
                    }
                });
            }
        });
    } else {

        setCookie('url', location.href, 1);
        location.href = '../html/denglv.html'
    }

});

$('.add_car2').click(() => {
    let username = getCookie('username');
    if (username) {
        let sid = data.sid;
        ajax({
            type: 'get',
            url: '../api/liebiao.php',
            data: {
                sid: data.sid,
                cha: 'zhao'
            },
            success: str => {
                // console.log(str);
                let arr = JSON.parse(str);
                let title = arr.list[0].title;
                let oldprice = arr.list[0].oldprice;
                let price = arr.list[0].price;
                let img = arr.list[0].img;
                let num = $('#shu').val();
                let color = $('.color .cur span').text();
                let size = $('.size .cur span').text();

                ajax({
                    type: 'post',
                    url: '../api/car.php',
                    data: {
                        username,
                        sid: data.sid,
                        title,
                        oldprice,
                        price,
                        img,
                        num,
                        color,
                        size,
                        goodcar: 'addgou',


                    },
                    success: str => {
                        // console.log(str);
                        carNumber1();
                        carNumber();
                    }
                });
            }
        });
    } else {

        setCookie('url', location.href, 1);
        location.href = '../html/denglv.html'
    }

});
$('.xf_main li ').click(function () {
    $(this).children().attr('class', 'active').parent().siblings().children().attr('class', '');
    let n = $(this).index() * 1 + 1
    let sstr = '../img/cp02_' + n + '.jpg';

    $('.xf_main img').attr("src", sstr);
});
$('.size li').click(function () {

    $(this).attr('class', 'cur').siblings().attr('class', '');

});
$('.color li ').click(function () {
    $(this).attr('class', 'cur').siblings().attr('class', '');

});
$('.side_main li ').click(function () {
    $(this).attr('class', 'hongdi').siblings().attr('class', '');
    let lou = $(this).data('id');


    let itop = $('.tiao').eq(lou).offset();
    // console.log(itop.top);
    $(document).scrollTop(itop.top - 20);



});





window.onscroll = function () {
    let xiding = document.getElementsByClassName('side_main')[0];
    let ck = document.querySelector('#xijie');
    let gunju = window.scrollY;
    if (gunju >= ck.offsetTop) {
        xiding.className = 'side_main xi';
        $('.fr').show();
    } else {
        xiding.className = 'side_main ';
        $('.fr').hide();
    }
}


