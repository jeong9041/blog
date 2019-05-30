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
	<script type="text/javascript">
		$(document).ready(function(){
			$('#btnshow').click(function(){
				$('#guestbookModal').modal('show');
			});
			$('#btnmodalclose').click(function(){
				$('#guestbookModal').modal('hide');
			});
			$('#btnsaveclose').click(function(){
				var textArea = $('#myTextArea').val();
				$.ajax({
					url:"/save",
					type: "post",
					data: {"story": textArea,"var":"test"},
					success : function(result){
						result = $.trim(result);
						if(result =='success'){
							$('#saveinfo').text('방명록을 작성을 완료하였습니다.');
							$('#saveCompleted').modal('show');		
						}else{
							$('#saveinfo').text('방명록을 작성에 실패하였습니다.');
							$('#saveCompleted').modal('show');
						}
					},
					error: function(e){
						alert(e.status);
						alert(e.responseText);
					}
				});
				$('#guestbookModal').modal('hide');
			});
			
			$('#btnsaveCompleted').click(function(){
				$('#saveCompleted').modal('hide');	
				location.href='/comment';
			});
			
		});	
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

<main id="main">

	<div class="container">
		
		<div class="row topspace">
			<div class="col-sm-8 col-sm-offset-2">
															
 				<article class="post">
					<header class="entry-header">
 						<div class="entry-meta"> 
 							<span class="posted-on"><time class="entry-date published" date="2013-06-17">June 17, 2013</time></span>			
 						</div> 
 						<h1 class="entry-title"><a href="/single" rel="bookmark">Vivamus Lacus Mauris</a></h1>
					</header> 
					<div class="entry-content"> 
						<p><img alt="" src="/resources/images/mac.jpg"></p>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Impedit, rerum voluptates veniam. Esse, nihil, ea, eaque, quos cum id tempore voluptate nisi nemo debitis impedit officiis culpa repellat voluptatum in aperiam error quo minima ratione ex pariatur maxime eligendi dolore nesciunt molestiae enim alias atque commodi delectus perferendis. Blanditiis, iste placeat nostrum in! Eligendi, omnis, unde, quos ullam nesciunt molestias quis a saepe nisi distinctio molestiae voluptate obcaecati officiis consequuntur similique aspernatur rerum sequi placeat iure quaerat itaque libero officia recusandae ad corrupti aperiam cum beatae. Adipisci ad natus deleniti.
						</p>
						<p>
							Dolores harum alias consequatur blanditiis. Inventore, quod, ullam veritatis eum ratione neque quis fugit quae optio facilis in ipsa! Maiores, quia, possimus repellendus iusto nostrum nisi doloribus qui excepturi ducimus veritatis molestiae autem consequatur quae ex nihil id sapiente minima adipisci. Quibusdam, aperiam, sapiente, nobis, possimus vero laudantium delectus esse minus quo nihil perspiciatis accusamus. Cupiditate sapiente illum accusantium animi pariatur sed minima nam. 
						</p>
						
						<blockquote>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim, itaque, porro, non sequi sunt vel quibusdam harum ea ratione ipsum eius eos maxime vitae hic ab dignissimos natus assumenda similique earum laboriosam possimus debitis molestiae. Commodi, facilis, et, officia hic quos quas ipsam harum amet illum quia reprehenderit sequi repellat. Asperiores, fugiat, optio reiciendis nam nisi assumenda alias non similique modi ducimus nostrum quasi consequatur ipsa animi soluta!
						</blockquote>
						<p>
							Harum, consectetur, quia nisi fugiat quasi ea amet cum inventore aperiam optio qui perspiciatis debitis molestiae laborum minima doloremque ullam eum nesciunt repellendus dolor dicta cumque deserunt. Quaerat, saepe, maxime, quod, dolor nisi assumenda aut est quos optio animi aliquid quidem voluptates adipisci hic recusandae dicta quis eligendi illo ducimus asperiores reiciendis odit distinctio natus? In, reprehenderit, facere, ipsam, vel architecto autem temporibus a quidem voluptatum at nesciunt quas facilis. Soluta, excepturi, nihil, illum dicta hic ratione tenetur voluptate dolorum a tempore dignissimos reprehenderit voluptas expedita officiis enim minus adipisci?</p>
						
						<h3>Deserunt, ullam, quo voluptate rem sed alias numquam eum natus!</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis, aperiam, ab neque est cum iste reprehenderit quidem eligendi ad dicta ducimus quod nihil amet! Possimus, qui, dolorem, animi quas nesciunt corporis esse maiores iusto optio deserunt sequi aspernatur voluptatem velit suscipit nam temporibus eaque neque hic quaerat molestiae nisi dolor numquam similique quae voluptas quos ex! Pariatur, voluptas, voluptatibus corporis animi nihil beatae asperiores explicabo odio at aspernatur ea sapiente voluptatem placeat fugit quas magni tempore aliquid minima eos tempora in id eveniet et maxime iste a quaerat dolorum consequuntur?</p>
						
						<h4>Perferendis, odit, optio, exercitationem quas ipsa eius quod ut aperiam facilis iste ratione odio laborum?</h4>
						<p>Dolore aliquid ipsum cum sint velit! Esse, perferendis illo hic temporibus reprehenderit nemo veritatis omnis velit quas impedit at facilis voluptatibus blanditiis qui maiores quod incidunt nobis maxime.</p>
						<p>A, quo quibusdam iusto repellendus blanditiis. Repellendus, doloribus, veritatis blanditiis dolores cumque in pariatur magni velit quibusdam doloremque amet harum dicta neque voluptas possimus dignissimos corporis voluptatibus nemo nostrum quae fuga enim beatae voluptate ex maxime sequi iusto. Voluptate, neque, quisquam, ipsum reprehenderit pariatur magnam excepturi libero quis nam inventore recusandae molestiae temporibus explicabo vel eius facere sit quae deleniti laboriosam voluptatibus necessitatibus sequi distinctio!</p>
					</div> 
				</article><!-- #post-## -->

			</div> 
		</div> <!-- /row post  -->


<!-- Modal -->
	<div class="modal fade" id="guestbookModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">글쓰기</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<textarea id="myTextArea" class="form-control" rows="10"></textarea>
				</div>
				<div class="modal-footer">
					<button id="btnmodalclose" type="button" class="btn btn-secondary">
					Close
					</button>
					<button id="btnsaveclose" type="button" class="btn btn-primary">
					Save
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="guestbookModalupdate">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">방명록 글수정</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<textarea id="myTextAreaupdate" class="form-control" rows="10"></textarea>
				</div>
				<div class="modal-footer">
					<button id="btnmodalcloseupdate" type="button" class="btn btn-secondary">
					닫기
					</button>
					<button id="btncloseupdate" type="button" class="btn btn-primary">
					수정
					</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="saveCompleted">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">안내문구</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" id="saveinfo">
					정상적으로 방명록을 작성하였습니다.
				</div>
				<div class="modal-footer">
					<button id="btnsaveCompleted" type="button" class="btn btn-secondary">
					닫기
					</button>
				</div>
			</div>
		</div>
	</div>


		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">

				<div id="comments">	
					<h3 class="comments-title">3 Comments</h3>
					<a href="/comment/#commentstart" class="leave-comment">Leave a Comment</a>
					<c:forEach items="${singleListPage}" var="mdto" varStatus="i">
						<c:choose>
 							<c:when test="${i.index < 5 }">
								<ol class="comments-list">
									
									<li class="comment">
									
										<div>							
											<img id="imgpath" src="/resources/${mdto.imageFileName}" alt="Avatar" class="avatar">
											
											<div class="comment-meta">
												<span class="author"><a href="#">${mdto.name}</a></span>
												<span class="date"><a href="#">${mdto.reg_date}</a></span>
												<span class="reply"><a href="inner_reply">Reply</a></span>
											</div><!-- .comment-meta -->
			
											<div class="comment-body">
												${mdto.message}												</div><!-- .comment-body -->
										</div>
									</li>
								</ol>
							</c:when>
 							<c:when test="${i.index >= 5}">
 							</c:when>
 						</c:choose>
					</c:forEach>
					<div class="clearfix"></div>

<!--  					<nav id="comment-nav-below" class="comment-navigation clearfix" role="navigation"><div class="nav-content">
							<div class="nav-previous">&larr; Older Comments</div>
							<div class="nav-next">Newer Comments &rarr;</div>
					</div></nav><!-- #comment-nav-below --> 
 
					<!-- 추가 -->
			
				<div class="row">
					<div class="col">
						<nav aria-label="singlePage">
							<ul class="pagination justify-content-center">
								<c:choose>
									<c:when test="${page eq '1'}">
										<li class="page-item disabled">
											<a class="page-link" href="/single/pre">Previous</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="/single/${page - 1}/#comments">Previous</a>
										</li>
									</c:otherwise>
								</c:choose>
								<c:forEach begin="1" end="${singleListCount}" varStatus="i">
									<li class="page-item">
										<a class="page-link" href="/single/${i.index}/#comments">${i.index}</a>
									</li>
								</c:forEach>
								<c:choose>
									<c:when test="${page eq singleListCount}">
										<li class="page-item disabled">
											<a class="page-link" href="/single/next">Next</a>
										</li>
									</c:when>
									<c:otherwise>
										<li class="page-item">
											<a class="page-link" href="/single/${page + 1}/#comments">Next</a>
										</li>
									</c:otherwise>
								</c:choose>
							</ul>
						</nav>
					</div>
				</div>
			<!-- 추가 -->		
					
					
					<div id="respond">
						<h3 id="reply-title">Leave a Reply</h3>
						
						<form action="/comment/insert" method="post" id="commentform" class="">
							<div class="form-group">
								<label for="inputName">Name</label>
								<input name="name" type="text" class="form-control" id="inputName" placeholder="Enter your name">
							</div>
							<div class="form-group">
								<label for="inputEmail">Email address <i class="text-danger">*</i></label>
								<input name="email" type="email" class="form-control" id="inputEmail" placeholder="Enter your email">
							</div>
							<div class="form-group">
								<label for="inputWeb">ID</label>
								<input name="id" type="text" class="form-control"  placeholder="http://">
							</div>
							<div class="form-group">
								<label for="inputComment">Comment</label>
								<textarea name="story" class="form-control" rows="6"></textarea>
							</div>
							<div class="row">
								<div class="col-md-8">
									<div class="checkbox">
										<label> <input type="checkbox"> Subscribe to updates</label>
									</div>
								</div>
								<div class="col-md-4 text-right">
  									<button type="submit" class="btn btn-action">Submit</button>
								</div>
						</form>
						
					</div> <!-- /respond -->
				</div>
			</div>
		</div> <!-- /row comments -->
		<div class="clearfix"></div>

	</div>	<!-- /container -->

</main>

<footer id="footer" class="topspace">
	<div class="container">
		<div class="row">
			<div class="col-md-3 widget">
				<h3 class="widget-title">Contact</h3>
				<div class="widget-body">
					<p>+234 23 9873237<br>
						<a href="mailto:#">some.email@somewhere.com</a><br>
						<br>
						234 Hidden Pond Road, Ashland City, TN 37015
					</p>	
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Follow me</h3>
				<div class="widget-body">
					<p class="follow-me-icons">
						<a href="http://www.twitter.com"><i class="fa fa-twitter fa-2"></i></a>
						<a href="http://www.dribble.com"><i class="fa fa-dribbble fa-2"></i></a>
						<a href="http://www.github.com"><i class="fa fa-github fa-2"></i></a>
						<a href="http://www.facebook.com"><i class="fa fa-facebook fa-2"></i></a>
					</p>
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Text widget</h3>
				<div class="widget-body">
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque, nihil natus explicabo ipsum quia iste aliquid repellat eveniet velit ipsa sunt libero sed aperiam id soluta officia asperiores adipisci maxime!</p>
				</div>
			</div>

			<div class="col-md-3 widget">
				<h3 class="widget-title">Form widget</h3>
				<div class="widget-body">
					<p>+234 23 9873237<br>
						<a href="mailto:#">some.email@somewhere.com</a><br>
						<br>
						234 Hidden Pond Road, Ashland City, TN 37015
					</p>	
				</div>
			</div>

		</div> <!-- /row of widgets -->
	</div>
</footer>

<footer id="underfooter">
	<div class="container">
		<div class="row">
			
			<div class="col-md-6 widget">
				<div class="widget-body">
					<p>234 Hidden Pond Road, Ashland City, TN 37015 </p>
				</div>
			</div>

			<div class="col-md-6 widget">
				<div class="widget-body">
					<p class="text-right">
						Copyright &copy; 2014, Your awesome name here<br> 
						Design: <a href="http://www.gettemplate.com" rel="designer">Initio by GetTemplate</a> </p>
				</div>
			</div>

		</div> <!-- /row of widgets -->
	</div>
</footer>



<!-- JavaScript libs are placed at the end of the document so the pages load faster -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="/resources/js/template.js"></script>
</body>
</html>
