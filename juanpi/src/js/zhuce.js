(function () {
    let isok1 = false;
    let isok2 = false;
    let isok3 = false;

    new Checkinput({
        ele: 'tel',
        event: 'blur',
        type: 'tel',
        success: function () {
            let username = $('#tel').val().trim();
            ajax({
                type: 'get',
                url: '../api/zhuce.php',
                data: {
                    username,
                    fangfa: 'yan'
                },
                success: function (str) {
                    console.log(str);
                    if (str == 'no') {
                        $('#tel').siblings('p').show();
                        $('#tel').siblings('p').css("color", "red");
                        $('#tel').siblings('p').html('手机号码已注册');
                        $('#tel').siblings('em').show();
                        $('#tel').siblings('em').css('background-position-x', '0');
                        isok1 = false;
                    } else if (str == 'yes') {
                        isok1 = true;
                        $('#tel').siblings('em').css('background-position-x', '-40px');
                        $('#tel').siblings('em').css('display', 'inline-block');
                        $('#tel').siblings('p').hide();
                    }
                }
            });


        },
        nullError: function () {
            $('#tel').siblings('p').show();
            $('#tel').siblings('p').css("color", "red");
            $('#tel').siblings('p').html('请输入11位手机号码');
            isok1 = false;
        },// 内容为空时
        reglError: function () {
            $('#tel').siblings('p').show();
            $('#tel').siblings('p').css("color", "red");
            $('#tel').siblings('p').html('手机号码不正确');
            $('#tel').siblings('em').show();
            $('#tel').siblings('em').css('background-position-x', '0');
            isok1 = false;
        }   // 正则不通过时
    });

    new Checkinput({
        ele: 'psw',
        event: 'blur',
        type: 'password',
        success: function () {
            isok2 = true;
            $('#psw').siblings('em').css('background-position-x', '-40px');
            $('#psw').siblings('em').css('display', 'inline-block');
            $('#psw').siblings('p').hide();
        },
        nullError: function () {
            $('#psw').siblings('p').show();
            $('#psw').siblings('p').css("color", "red");
            $('#psw').siblings('p').html('请输入密码');
            isok2 = false;
        },// 内容为空时
        reglError: function () {
            $('#psw').siblings('p').show();
            $('#psw').siblings('p').css("color", "red");
            $('#psw').siblings('p').html('密码不合法');
            $('#psw').siblings('em').show();
            $('#psw').siblings('em').css('background-position-x', '0');
            isok2 = false;
        }   // 正则不通过时
    });
    $('#psw1').blur(function () {
        let psw = $('#psw').val().trim();
        let psw1 = $('#psw1').val().trim();
        if (psw1) {
            if (psw == psw1) {
                $('#psw1').siblings('em').css('background-position-x', '-40px');
                $('#psw1').siblings('em').css('display', 'inline-block');
                $('#psw1').siblings('p').hide();
                isok3 = true;
            } else {
                $('#psw1').siblings('p').show();
                $('#psw1').siblings('p').css("color", "red");
                $('#psw1').siblings('p').html('两次密码不一致');
                isok3 = false;
            }
        } else {
            $('#psw1').siblings('p').show();
            $('#psw1').siblings('p').html('请输入确认密码');
            $('#psw1').siblings('p').css("color", "red");
            isok3 = false;
        }


    });
    $('#okbtn').click(function () {


        if ($('#xieyi').prop('checked')) {
            if (isok1 && isok2 && isok3) {
                let username = $('#tel').val().trim();
                let password = $('#psw').val().trim();
                ajax({
                    type: 'post',
                    url: '../api/zhuce.php',
                    data: {
                        username,
                        password,
                        fangfa: 'zhuce'
                    },
                    success: function (str) {
                        console.log(str);
                        if (str == 'no') {
                            alert('注册失败')
                        } else if (str == 'yes') {
                            alert('注册成功')
                            location.href = 'denglv.html';
                        }
                    }
                });
            }
        } else {
            alert('请同意卷皮用户协议');
        }
    });





})();