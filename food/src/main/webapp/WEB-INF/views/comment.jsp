<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Leave a Comment</title>
	
	<link rel="shortcut icon" href="/resources/images/gt_favicon.png">
	<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
	<link rel="stylesheet" href="/resources/css/styles.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
	<script src="/resources/js/template.js"></script>
    <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="/resources/css/style.css" rel='stylesheet' type='text/css' media="all">
	
<script type="text/javascript">
	function doupload(){
//		alert('일로오나');
		var form = $('#commentform')[0];
		var data = new FormData(form);
		data.append("text", "20190614");
		
		$.ajax({
			type : "POST",
			enctype : 'multipart/form-data',
			url : "/fileupload/ajax",
			data : data,
			processData : false,
			contentType : false,
			cache : false,
			timeout : 600000,
			success : function(data) {
		//		alert(' data ='+data ) //data는 컨트롤러의 리턴값이 들어온다
				$('#imgpath').attr('src','/resources/'+data);
		//		alert('저장에 성공하였습니다.');
				location.href='/single/#comments';
			},
			error : function(e) {
				alert(e.status);
				alert(e.responseText);
			}
		});
	}
</script>
</head>
<body>
<header id="header">
<div class="header-outs inner_page-banner " id="home">
    <div class="headder-top">
      <!-- nav -->
      <nav>
        <div id="logo">
          <h1>
            <a href="/">Chocolate</a>
          </h1>
        </div>
        <label for="drop" class="toggle">Menu</label>
        <input type="checkbox" id="drop">
        <ul class="menu mt-2">
          <li class="active">
            <a href="/">Home</a>
          </li>
          <li class="mx-lg-3 mx-md-2 my-md-0 my-1">
            <a href="/about">About</a>
          </li>
          <li>
            <a href="/service">Services</a>
          </li>
          <li class="mx-lg-3 mx-md-2 my-md-0 my-1">
            <!-- First Tier Drop Down -->
            <label for="drop-2" class="toggle toogle-2">Dropdown
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </label>
            <a href="#">Dropdown
              <span class="fa fa-angle-down" aria-hidden="true"></span>
            </a>
            <input type="checkbox" id="drop-2">
            <ul>
              <li>
                <a href="/gallery" class="drop-text">Gallery</a>
              </li>
              <li>
                <a href="/blog" class="drop-text">Blog</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="/contact">Contact Us</a>
          </li>
        </ul>
      </nav>
      <!-- //nav -->
    </div>
  </div>
 </header> 
<!------------container------->

<div class="container" id="commentstart">

<h1>COMMENT BOX</h1>
<!-------Wrap------------>
<div id="wrap">
<div id="main">
	<div class="row">
		<div class="col-md-5">
			<h3 class="heading">Comments and Responses</h3>
		</div>
		<div class="col-md-7">
			<div id="upper_blank"></div>
		</div>
	</div>
</div>

<p>Your email address will not be published. Required fields are marked *</p>

<!------------Form Start---------->

<div id='form'>
<div class="row">
<div class="col-md-12">

<form action="" method="POST" id="commentform" enctype="multipart/form-data">	
		<div id="comment-name" class="form-row">
			<input type ="text" placeholder = "Name (required)" name ="name"  id ="name" >
		</div>		
		<div class="form-row">			
			<div class="container">
				  <div class="row">
				  <div class="col-sm-2 imgUp">				  
				    <div class="avatar" alt="Avatar" id="imgpath" src="/resources/${impath}"></div>
						<label>
							   Upload<input type="file" class="uploadFile img" name="image"
							   value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
						</label>
				   </div>	
				</div>
			</div>
		
		
		</div>
				
		<div id="comment-message" class="form-row">
			<textarea name="message" placeholder = "Message" id = "comment" ></textarea>
		</div>
			<a href="#">
			<input type="button" onclick="doupload();" name="dsubmit" id="commentSubmit" value="Submit Comment"></a>
			<input style="width: 30px" type="checkbox" value="1" name="subscribe" id="subscribe" checked="checked">
		<p1>
			<b>Notify me when new comments are added.</b>
		</p1>
</form>

</div>
</div>
</div>
</div>

<!-------------------Reply Section------->
<div id="second">
<div class="row">
<div class="col-md-2">
<h3 class="second_heading"><b>Leave a Reply</b></h3>
</div>
<div class="col-md-10">
<div class="blank"></div>
</div>
</div>
</div>
<div id="middle">
<form>
<a href="#">
<input type = "text" value = "reply" name = "dreply" id = "inner_reply">
</a>
</form>
</div>

</div>


</body>
</html>