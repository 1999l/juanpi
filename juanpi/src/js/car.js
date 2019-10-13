(function () {
    let username = getCookie('username');
    var p = new Promise(function (resolve) {
        ajax({
            type: 'post',
            url: '../api/car.php',
            data: {
                username,
                goodcar: 'csh',


            },
            success: str => {
                console.log(str);
                let arr = JSON.parse(str);
                resolve(arr);

            }
        })
    })
    p.then(function (arr) {

        let html = arr.list.map(function (item, index) {
            return ` <div class="goodlist" >
                <div class="dian">
                    <span class="dianall"></span>
                    <img src="../img/pai.png" alt="">
                    <span>跨店促销</span>
                    <em>已享5折优惠 去凑单 >></em>
                </div>
                <div class="wu" data-id="${item.sid}">
                    <input type="checkbox" name="" class="shangpin data-id="${index}"">
                    <img src="${item.img}"
                        alt="">
                    <div class="spxh">
                        <p>${item.title}</p>
                        <span class="yanse">${item.color}</span>
                        <span class="daxiao">${item.size}</span>
                    </div>
                    <div class="spdj"><span>￥${item.price}</span>
                        <i>/ ￥${item.oldprice}</i>
                    </div>
                    <div class="spshu">
                        <span class="jian_btn" data-id="${index}">-</span>
                        <span class="shu" data-id="${index}" data-je="${item.price}">${item.num}</span>
                        <span class="add_btn" data-id="${index}">+</span>
                    </div>
                    <div class="spxj">
                        <span>￥</span>
                        <span class="xiaoji">${item.num * item.price}</span>
                    </div>
                    <div class="shanchu">
                        <div class="sc" data-id="${index}"></div>
                    </div>
                </div>
                </div>`;
        }).join('');


        $('#list').html(html);
    });

    $('#list').on('click', '.add_btn', function () {
        // console.log(777);
        var num = $(this).prev().text();
        num++;
        $(this).prev().text(num);//这里要有接口
        let sid = $(this).parent().parent().data('id');
        ajax({
            type: 'post',
            url: '../api/car.php',
            data: {
                username,
                sid,
                num,
                goodcar: 'add',


            },
            success: str => {
                console.log(str);
                carNumber1();

            }
        });
        // console.log(num);
        var index = $(this).data('id');
        xiaoji(num, index);
        var arr = checked_rows();
        changeNum(arr);
    });

    $('#list').on('click', '.jian_btn', function () {
        // console.log(777);
        var num = $(this).next().text();
        num--;
        if (num <= 1) {//临界值设置
            num = 1;
        }
        $(this).next().text(num);//这里要有接口
        let sid = $(this).parent().parent().data('id');
        ajax({
            type: 'post',
            url: '../api/car.php',
            data: {
                username,
                sid,
                num,
                goodcar: 'add',


            },
            success: str => {
                console.log(str);
                carNumber1();

            }
        });
        // console.log(num);
        var index = $(this).data('id');
        xiaoji(num, index);
        var arr = checked_rows();
        changeNum(arr);
    });
    function xiaoji(num, index) {
        var price = $('.shu').eq(index).data('je');
        var total = num * price;
        $('.xiaoji').eq(index).html(total);
    }

    $('#list').on('click', '.sc', function () {
        var index = $(this).data('id');
        let isok = confirm('您确定要删除吗');
        if (isok) {

            let sid = $(this).parent().parent().data('id');
            let color = $('.yanse').eq(index).text();
            let size = $('.daxiao').eq(index).text();
            $('.dian').eq(index).remove();//这里要有接口
            $('.wu').eq(index).remove();

            ajax({
                type: 'post',
                url: '../api/car.php',
                data: {
                    username,
                    sid,
                    color,
                    size,
                    goodcar: 'shanchu',


                },
                success: str => {
                    console.log(str);
                    carNumber1();

                }
            });
            update();

        }
        var arr = checked_rows();
        changeNum(arr);

    });
    //重置索引
    function update() {
        // console.log(890);
        $('.sc').each(function (index, item) {
            $('.sc').eq(index).attr('data-id', index);
            $('.add_btn').eq(index).attr('data-id', index);
            $('.jian_btn').eq(index).attr('data-id', index);
            $('.shu').eq(index).attr('data-id', index);
            $('.shangpin').eq(index).attr('data-id', index);
        });
    }
    $('#all').click(function () {
        $('.shangpin').prop('checked', $(this).prop('checked'));

        var arr = checked_rows();

        changeNum(arr);

    });

    $('#list').on('click', '.shangpin', function () {
        // console.log(7778);


        var num = $('.shangpin:checked').size();
        var len = $('.shangpin').size();
        if (num == len) {
            //全选中
            $('#all').prop('checked', true);
        } else {
            $('#all').prop('checked', false);
        }
        // console.log(checked_rows());//被勾选的行数
        var arr = checked_rows();
        changeNum(arr);
    });
    function checked_rows() {
        var arr = [];
        $('.shangpin').each(function (index, item) {
            if ($('.shangpin').eq(index).prop('checked')) {
                //这一行被勾选
                arr.push(index);
            }
        });
        return arr;
    }
    function changeNum(arr) {
        var total = 0;
        var prices = 0;
        for (var item of arr) {
            //item是下标
            total += $('.shu').eq(item).text() * 1;
            prices += $('.xiaoji').eq(item).html() * 1;
        }
        $('#jianshu').text(total);
        $('#zjia').text(prices.toFixed(2));
    }
    $('#header .conter span').click(() => {
        location.href = '../html/shouye.html'
    })

})();