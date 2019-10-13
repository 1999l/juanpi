$(document).ready(function () {
	// === Sidebar navigation === //

	$('.menu_a').click(function (e) {
		$("#iframe-main").attr("src", $(this).attr('link'));

		$(".menu_a").parent('li').removeClass('active');

		$(this).parent('li').addClass('active');
	});

	$('.submenu > a').click(function (e) {
		e.preventDefault();
		var submenu = $(this).siblings('ul');
		var li = $(this).parents('li');
		var submenus = $('#sidebar li.submenu ul');
		var submenus_parents = $('#sidebar li.submenu');
		if (li.hasClass('open')) {
			if (($(window).width() > 768) || ($(window).width() < 479)) {
				submenu.slideUp();
			} else {
				submenu.fadeOut(250);
			}
			li.removeClass('open');
		} else {
			if (($(window).width() > 768) || ($(window).width() < 479)) {
				submenus.slideUp();
				submenu.slideDown();
			} else {
				submenus.fadeOut(250);
				submenu.fadeIn(250);
			}
			submenus_parents.removeClass('open');
			li.addClass('open');
		}
	});

	var ul = $('#sidebar > ul');

	$('#sidebar > a').click(function (e) {
		e.preventDefault();
		var sidebar = $('#sidebar');
		if (sidebar.hasClass('open')) {
			sidebar.removeClass('open');
			ul.slideUp(250);
		} else {
			sidebar.addClass('open');
			ul.slideDown(250);
		}
	});

	// === Resize window related === //
	$(window).resize(function () {
		if ($(window).width() > 479) {
			ul.css({ 'display': 'block' });
			$('#content-header .btn-group').css({ width: 'auto' });
		}
		if ($(window).width() < 479) {
			ul.css({ 'display': 'none' });
			fix_position();
		}
		if ($(window).width() > 768) {
			$('#user-nav > ul').css({ width: 'auto', margin: '0' });
			$('#content-header .btn-group').css({ width: 'auto' });
		}
	});

	if ($(window).width() < 468) {
		ul.css({ 'display': 'none' });
		fix_position();
	}

	if ($(window).width() > 479) {
		$('#content-header .btn-group').css({ width: 'auto' });
		ul.css({ 'display': 'block' });
	}

	// === Tooltips === //
	$('.tip').tooltip();
	$('.tip-left').tooltip({ placement: 'left' });
	$('.tip-right').tooltip({ placement: 'right' });
	$('.tip-top').tooltip({ placement: 'top' });
	$('.tip-bottom').tooltip({ placement: 'bottom' });

	// === Search input typeahead === //
	$('#search input[type=text]').typeahead({
		source: ['Dashboard', 'Form elements', 'Common Elements', 'Validation', 'Wizard', 'Buttons', 'Icons', 'Interface elements', 'Support', 'Calendar', 'Gallery', 'Reports', 'Charts', 'Graphs', 'Widgets'],
		items: 4
	});

	// === Fixes the position of buttons group in content header and top user navigation === //
	function fix_position() {
		var uwidth = $('#user-nav > ul').width();
		$('#user-nav > ul').css({ width: uwidth, 'margin-left': '-' + uwidth / 2 + 'px' });

		var cwidth = $('#content-header .btn-group').width();
		$('#content-header .btn-group').css({ width: cwidth, 'margin-left': '-' + uwidth / 2 + 'px' });
	}

	// === Style switcher === //
	$('#style-switcher i').click(function () {
		if ($(this).hasClass('open')) {
			$(this).parent().animate({ marginRight: '-=190' });
			$(this).removeClass('open');
		} else {
			$(this).parent().animate({ marginRight: '+=190' });
			$(this).addClass('open');
		}
		$(this).toggleClass('icon-arrow-left');
		$(this).toggleClass('icon-arrow-right');
	});

	$('#style-switcher a').click(function () {
		var style = $(this).attr('href').replace('#', '');
		$('.skin-color').attr('href', 'css/maruti.' + style + '.css');
		$(this).siblings('a').css({ 'border-color': 'transparent' });
		$(this).css({ 'border-color': '#aaaaaa' });
	});

	$('.lightbox_trigger').click(function (e) {

		e.preventDefault();

		var image_href = $(this).attr("href");

		if ($('#lightbox').length > 0) {

			$('#imgbox').html('<img src="' + image_href + '" /><p><i class="icon-remove icon-white"></i></p>');

			$('#lightbox').slideDown(500);
		}

		else {
			var lightbox =
				'<div id="lightbox" style="display:none;">' +
				'<div id="imgbox"><img src="' + image_href + '" />' +
				'<p><i class="icon-remove icon-white"></i></p>' +
				'</div>' +
				'</div>';

			$('body').append(lightbox);
			$('#lightbox').slideDown(500);
		}

	});


	$('#lightbox').live('click', function () {
		$('#lightbox').hide(200);
	});

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
	let usname = getCookie('name');
	$('.dropdown-toggle .text').text('欢迎你,' + usname);
	$('.dropdown-tui .text').click(() => {
		setCookie('name', '', -1);
	});
});

