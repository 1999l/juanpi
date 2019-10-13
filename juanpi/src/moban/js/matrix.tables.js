
$(document).ready(function () {

	$('.data-table').dataTable({
		"bJQueryUI": true,
		"sPaginationType": "full_numbers",
		"sDom": '<""l>t<"F"fp>'
	});

	$('input[type=checkbox],input[type=radio],input[type=file]').uniform();

	$('select').select2();

	$("span.icon input:checkbox, th input:checkbox").click(function () {
		var checkedStatus = this.checked;
		var checkbox = $(this).parents('.widget-box').find('tr td:first-child input:checkbox');
		checkbox.each(function () {
			this.checked = checkedStatus;
			if (checkedStatus == this.checked) {
				$(this).closest('.checker > span').removeClass('checked');
			}
			if (this.checked) {
				$(this).closest('.checker > span').addClass('checked');
			}
		});
	});
	function init() {
		ajax({
			type: 'post',
			url: '../api/houtai.php',
			data: {
				fangfa: 'csh',


			},
			success: str => {
				// console.log(str);
				let arr = JSON.parse(str);
				resolve(arr);

			}
		});

		function resolve(arr) {


			let html = '';
			// console.log(arr.list);
			for (let i = 0; i < arr.list.length; i++) {

				html += `
			 <tr>
			<td><input type="checkbox" ></td>  
			<td>${arr.list[i].id}</td>  
			<td >${arr.list[i].username}</td>  
			<td class="gai" >${arr.list[i].psw}</td>  
			<td class="center" >${arr.list[i].email}</td>  
			<td>  
				<button type="submit" class="btn btn-success" data-id="${arr.list[i].id}">修改并保存</button>  
				<button type="submit" class="btn btn-danger" data-id="${arr.list[i].id}">删除</button>  
				<button type="submit" class="btn btn-info" data-id="${arr.list[i].id}">Edit</button>  
			</td>
				 </tr>   `;
			}

			$('.widget-content tbody').html(html);

		}
	}
	init();



	$('.widget-content tbody').on('click', '.btn-success', function () {
		$(this).parent().prev().attr('contenteditable', 'false');
		$(this).parent().prev().prev().attr('contenteditable', 'false');
		let email = $(this).parent().prev().text();
		let password = $(this).parent().prev().prev().text();
		let id = $(this).data('id');
		ajax({
			type: 'post',
			url: '../api/houtai.php',
			data: {
				id,
				email,
				password,
				fangfa: 'xiu',


			},
			success: str => {
				// console.log(str);



			}
		});

	});
	$('.widget-content tbody').on('click', '.btn-danger', function () {
		$(this).parent().parent().remove();
		let id = $(this).data('id');
		ajax({
			type: 'post',
			url: '../api/houtai.php',
			data: {
				id,
				fangfa: 'shanchu',


			},
			success: str => {
				// console.log(str);



			}
		});

	});
	$('.widget-content tbody').on('click', '.btn-info', function () {
		$(this).parent().prev().attr('contenteditable', 'true');
		$(this).parent().prev().prev().attr('contenteditable', 'true');
	});


});
