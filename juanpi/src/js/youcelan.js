(function () {
    $('.user').hover(function () {
        $('.sidebar-d1').stop().animate({ 'left': -220, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d1').stop().animate({ 'left': -257, 'opacity': 0 }, 300).hide();
    });
    $('.love').hover(function () {
        $('.sidebar-d2').stop().animate({ 'left': -90, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d2').stop().animate({ 'left': -147, 'opacity': 0 }, 300).hide();
    });

    $('.juan').hover(function () {
        $('.sidebar-d3').stop().animate({ 'left': -90, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d3').stop().animate({ 'left': -147, 'opacity': 0 }, 300).hide();
    });


    $('.yijian').hover(function () {
        $('.sidebar-d4').stop().animate({ 'left': -90, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d4').stop().animate({ 'left': -121, 'opacity': 0 }, 300).hide();
    });


    $('.ma').hover(function () {
        $('.sidebar-d5').stop().animate({ 'left': -103, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d5').stop().animate({ 'left': -127, 'opacity': 0 }, 300).hide();
    });


    $('.hui').hover(function () {
        $('.sidebar-d6').stop().animate({ 'left': -90, 'opacity': 1 }, 300).show();
    }, function () {
        $('.sidebar-d6').stop().animate({ 'left': -121, 'opacity': 0 }, 300).hide();
    });




    //如果存在cookie，则在侧栏显示用户名
    let pX = document.querySelector('.sidebar-d1 p');
    if (getCookie('username')) {
        pX.innerHTML = `<span>你好！${getCookie('username')}</span>`;
        carNumber();
    }
    function carNumber() {
        ajax({
            type: 'get',
            url: '../api/car.php',
            data: {
                username,
                goodcar: 'changdu'
            },
            success: str => {
                // console.log(str);
                console.log(777);

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
    $('.right_top .car').click(() => {
        let username = getCookie('username');
        if (username) {
            location.href = '../html/car.html';
        }

    });

    $(document).scroll(() => {
        let iTop = $(document).scrollTop();
        if (iTop > 200) {
            $('.huiqu').attr("style", "display:none")
        } else {
            $('.huiqu').attr("style", "display:block")
        }

    });


    let box = document.getElementsByClassName('hui')[0];

    box.onclick = function () {
        var timer = setInterval(function () {
            var juli = window.scrollY;
            var x = parseInt(juli / 16);
            console.log(x);
            if (x <= 0) {
                clearInterval(timer);
                // box.style.display = 'none';
            }
            window.scrollBy(0, -x);
        }, 30)

    }
})();