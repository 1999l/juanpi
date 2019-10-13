(function () {
    let isok = false;
    $('.ma').html(ma(4));
    zhuan(4);
    $('.yan  i').click(() => {
        $('.ma').html(ma(4));
        zhuan(4);
    });

    $('#tex').blur(function () {
        let tex = $('#tex').val().trim().toUpperCase();

        if (tex) {
            let tex1 = $('.ma').text().toUpperCase();
            if (tex == tex1) {
                $('#tex').siblings('em').css('background-position-x', '-40px');
                $('#tex').siblings('em').css('display', 'inline-block');
                $('#tex').siblings('p').hide();
                isok = true;
            } else {
                $('#tex').siblings('p').show();
                $('#tex').siblings('p').css("color", "red");
                $('#tex').siblings('p').html('验证码错误');
                $('#tex').siblings('em').css('display', 'inline-block');
                $('#tex').siblings('em').css('background-position-x', '0');
                isok = false;
            }
        } else {
            $('#tex').siblings('p').show();
            $('#tex').siblings('p').html('请输入验证码');
            $('#tex').siblings('p').css("color", "red");
            isok = false;
        }


    });
    $('#okbtn').click(() => {
        if (isok) {
            let username = $('#tel').val().trim();
            let password = $('#psw').val().trim();
            ajax({
                type: 'post',
                url: '../api/zhuce.php',
                data: {
                    username,
                    password,
                    fangfa: 'denglv'
                },
                success: function (str) {
                    console.log(str);
                    if (str == 'no') {
                        alert('登录失败')
                    } else if (str == 'yes') {
                        alert('登录成功')
                        if ($('#miandl').prop('checked')) {
                            setCookie('username', username, 14);
                        } else {
                            setCookie('username', username, 1);
                        }

                        let url = getCookie('url');
                        if (url) {
                            location.href = url;
                            removeCookie('url');
                        } else {
                            location.href = 'shouye.html';
                        }

                    }
                }
            });
        } else {

        }

    });
})();