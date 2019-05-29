<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author"      content="Sergey Pozhilov (GetTemplate.com)">
	
	<title>Blog post | Initio - Free, multipurpose html5 template by GetTemplate</title>
	
	<link rel="shortcut icon" href="/resources/images/gt_favicon.png">
	<link rel = "stylesheet" href = "http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<!-- Bootstrap -->
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.no-icons.min.css" rel="stylesheet">
	<!-- Icon font -->
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
	<!-- Fonts -->
	<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Alice|Open+Sans:400,300,700">
	<!-- Custom styles -->
	<link rel="stylesheet" href="/resources/css/styles.css">

	<!--[if lt IE 9]> <script src="assets/js/html5shiv.js"></script> <![endif]-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="/resources/js/template.js"></script>
	
	<script type="text/javascript">
	function doupload() {
		var form = $('#fileUploadForm')[0];
		var data = new FormData(form);
		data.append("CustomField", "This is some extra data, testing");
		
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
				alert(' data ='+data )
				$('#imgpath').attr('src','/resources/'+data);
			},
			error : function(e) {
			}
		});
	}
</script>
</head>
<body>

<header id="header">
	<div id="head" class="parallax" parallax-speed="1">
		<h1 id="logo" class="text-center">
			<img class="img-circle" src="/resources/images/guy.jpg" alt="">
			<span class="title">Hoho Jeong Blog</span>
			<span class="tagline">A creative man is motivated by the desire to achieve, not by the desire to beat others.</span>
		</h1>
	</div>

	<nav class="navbar navbar-default navbar-sticky">
		<div class="container-fluid">
			
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
			</div>
			
			<div class="navbar-collapse collapse">
				
				<ul class="nav navbar-nav">
					<li><a href="/">Home</a></li>
					<li><a href="/about">About</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/sidebar-left">Left Sidebar</a></li>
							<li><a href="/sidebar-right">Right Sidebar</a></li>
							<li><a href="/single">Blog Post</a></li>
						</ul>
					</li>
					<li class="active"><a href="/blog">Blog</a></li>
				</ul>
			
			</div><!--/.nav-collapse -->			
		</div>	
	</nav>
</header>

<!------------container------->

<div class="container">

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

<form action="/single/insert" method="POST" id="commentform">
	
		<div id="comment-name" class="form-row">
			<input type ="text" placeholder = "Name (required)" name ="name"  id ="name" >
		</div>
		
		<div class="form-row">
		
		<form id="fileUploadForm" method="post" enctype="multipart/form-data">
			<div class="container">
				  <div class="row">
				  <div class="col-sm-2 imgUp">
				    <div class="avatar" alt="Avatar" ></div>
						<label>
							   Upload<input type="file" class="uploadFile img" name="image"
							   value="Upload Photo" style="width: 0px;height: 0px;overflow: hidden;">
						</label>
				   </div>	
				</div>
			</div>
		</form>
		
		</div>
				
		<div id="comment-message" class="form-row">
			<textarea name = "message" placeholder = "Message" id = "comment" ></textarea>
		</div>
			<a href="#"><input type="submit" onclick="doupload();" name="dsubmit" id="commentSubmit" value="Submit Comment"></a>
			<input style="width: 30px" type="checkbox" value="1" name="subscribe" id="subscribe" checked="checked">
		<p1><b>Notify me when new comments are added.</b></p1>
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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</body>
</html>