<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Test</title>

<link rel="stylesheet" href="https://uicdn.toast.com/grid/latest/tui-grid.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://uicdn.toast.com/grid/latest/tui-grid.js"></script>   
</head>

<body>
   
  <div id="grid"></div>
  <button id='addBtn'>추가</button>
  <button id='saveBtn'>저장</button>
  <button id='delBtn'>삭제</button>
  <button id='delBtn'>삭제2</button>

<script type="text/javascript">
	var clsData = {
			api: {
				readData: { url: 'read.html', method: 'GET' }
			}
		};

	const grid = new tui.Grid({
	    el: document.getElementById('grid'),
	    scrollX: false,
	    scrollY: false,
	    rowHeaders: ['checkbox'],
	    columns: [
	  	  {
	  	    header: '거래처ID',
	  	    name: 'i_sup',
            width: 100
	  	  },
	  	  {
	  	    header: '거래처명',
	  	    name: 't_sup',
	  	    editor: 'text',
            width: 200
	  	  },
	  	  {
	  	    header: '상호',
	  	    name: 't_suppr'
	  	  },
	  	  {
	  	    header: '대표자',
	  	    name: 't_bosspr'
	  	  },
	  	  {
	  	    header: '등록번호구분',
	  	    name: 'i_sysc_ba'
	  	  },
	  	  {
	  	    header: '등록번호',
	  	    name: 't_reg'
	  	  },
	  	  {
	  	    header: '업종',
	  	    name: 't_vg'
	  	  },
	  	  {
	  	    header: '업태',
	  	    name: 't_vt'
	  	  }
	    ],
		 data: clsData
	  });	
	
	
	$('#delBtn').on('click', function() {
		var confirm_value = confirm("정말 삭제하시겠습니까?");
		
	});
	
	$('#saveBtn').on('click', function() {
		var confirm_value = confirm("저장 하시겠습니까?");
		
	});

    grid.on('check', ev => {
        console.log('check!', ev);
        var id = ev.get
      });	
</script>
</body>
</html>