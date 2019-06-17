<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>  
<!DOCTYPE html>
<html>

<head>
  <title>Gateau a hotel & Restaurant Category Bootstrap Responsive web Template| Home :: w3layouts</title>
  <!--meta tags -->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="keywords" content="Gateau Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
      Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
  <script>
    addEventListener("load", function () {
      setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
      window.scrollTo(0, 1);
    }
  </script>
  <!--//meta tags ends here-->
  <!--booststrap-->
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
  <!--//booststrap end-->
  <!-- font-awesome icons -->
  <link href="/resources/css/font-awesome.min.css" rel="stylesheet">
  <!-- //font-awesome icons -->
  <!--stylesheets-->
  <link href="/resources/css/style.css" rel='stylesheet' type='text/css' media="all">
  <!--//stylesheets-->
  <link href="//fonts.googleapis.com/css?family=Arimo:400,700" rel="stylesheet">
  <link href="//fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
</head>

<body>
  <div class="main-top" id="home">
    <div class="headder-top">
      <!-- nav -->
      <nav>
        <div id="logo">
          <h1>
            <a href="/">Cocholate</a>
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
    <!-- banner -->
    <div class="container">
      <div class="row main-banner">
        <div class="col-lg-4 col-md-5 style-banner ">
          <div class="banner-rotated">
            <h4>
              <span> F</span>
            </h4>
            <h4>
              <span> r</span>
            </h4>
            <h4>
              <span> e</span>
            </h4>
            <h4>
              <span> s</span>
            </h4>
            <h4>
              <span> h</span>
            </h4>
          </div>
          <div class="banner-rotated">
            <h4>
              <span> C</span>
            </h4>
            <h4>
              <span> h</span>
            </h4>
            <h4>
              <span> o</span>
            </h4>
            <h4>
              <span> c</span>
            </h4>
            <h4>
              <span> o</span>
            </h4>
          </div>
          <h5 class="mt-lg-4 mt-3">Delicious Chocolate for Your Special Event
          </h5>
        </div>
        <div class="col-lg-8 col-md-7 banner-imgs text-center">
          <div class="row no-gutters">
            <div class="col-sm-4 banner-right-images">
              <img src="/resources/images/t7.jpg" alt="news image" class="img-fluid">
            </div>
            <div class="col-sm-4 banner-right-images">
              <img src="/resources/images/t8.jpg" alt="news image" class="img-fluid">
            </div>
            <div class="col-sm-4 banner-right-images">
              <img src="/resources/images/t9.jpg" alt="news image" class="img-fluid">
            </div>
            <div class="col-sm-4 banner-right-images">
              <img src="/resources/images/t6.jpg" alt="news image" class="img-fluid ">
            </div>
            <div class="col-sm-4 banner-right-images">
              <img src="/resources/images/t5.jpg" alt="news image" class="img-fluid">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- //banner -->
  <!-- about -->
  <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6 about-two-grids my-3">
          <span class="fa fa-bars mb-3" aria-hidden="true"></span>
          <h4>Recipes</h4>
          <div class="about-para-txt mt-2">
            <p>Lorem ipsum dolor sit amet eiusmod tempor incididunt ut labore et consectetur adipiscing</p>
          </div>
          <div class="view-buttn mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 about-two-grids my-3">
          <span class="fa fa-diamond mb-3" aria-hidden="true"></span>
          <h4>Products</h4>
          <div class="about-para-txt mt-2">
            <p>Lorem ipsum dolor sit amet eiusmod tempor incididunt ut labore et consectetur adipiscing</p>
          </div>
          <div class="view-buttn mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 about-two-grids my-3">
          <span class="fa fa-birthday-cake mb-3" aria-hidden="true"></span>
          <h4>Cake Classes</h4>
          <div class="about-para-txt mt-2">
            <p>Lorem ipsum dolor sit amet eiusmod tempor incididunt ut labore et consectetur adipiscing</p>
          </div>
          <div class="view-buttn mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 title-right-side my-3">
          <div class="rotated-title">
            <h3 class="title mb-lg-4 mb-md-3 mb-2"> About</h3>
            <h6 class="title-sub">who are we</h6>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //about -->
  <!-- service -->
  <section class="service py-lg-4 py-md-3 py-sm-3 py-3" id="service">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-3 col-md-4 my-3">
          <div class="rotated-title">
            <h3 class="title mb-lg-4 mb-md-3 mb-2">Service</h3>
            <h6 class="title-sub">What We dO</h6>
          </div>
        </div>
        <div class="col-lg-9 col-md-8 service-grid-top position-relative my-3">
          <img src="/resources/images/t3.jpg" alt="news image" class="img-fluid">
          <div class="ser-fashion-grid ser-fashion-wthree">
            <div class="about-icon mb-md-4 mb-3">
              <span class="fa fa-snowflake-o" aria-hidden="true"></span>
            </div>
            <div class="ser-sevice-grid">
              <h4 class="pb-3">Seasonal Pastries</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna Lorem ipsum dolor sit amet
              </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row mid-row-grids">
        <div class="col-lg-3 col-md-6 col-sm-6 service-grid-wthree my-3">
          <div class="ser-fashion-wthree">
            <div class="about-icon mb-md-4 mb-3">
              <span class="fa fa-thumbs-o-up" aria-hidden="true"></span>
            </div>
            <div class="ser-sevice-grid">
              <h4 class="pb-3">Best Service</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna Lorem ipsum dolor sit amet</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 service-grid-wthree my-3">
          <div class="ser-fashion-wthree">
            <div class="about-icon mb-md-4 mb-3">
              <span class="fa fa-laptop" aria-hidden="true"></span>
            </div>
            <div class="ser-sevice-grid">
              <h4 class="pb-3">Online Order</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna Lorem ipsum dolor sit amet</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 service-grid-wthree my-3">
          <div class="ser-fashion-wthree">
            <div class="about-icon mb-md-4 mb-3">
              <span class="fa fa-smile-o" aria-hidden="true"></span>
            </div>
            <div class="ser-sevice-grid">
              <h4 class="pb-3">Door Delivery</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna Lorem ipsum dolor sit amet</p>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 service-grid-wthree my-3">
          <div class="ser-fashion-wthree">
            <div class="about-icon mb-md-4 mb-3">
              <span class="fa fa-users" aria-hidden="true"></span>
            </div>
            <div class="ser-sevice-grid">
              <h4 class="pb-3">Event Catering</h4>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna Lorem ipsum dolor sit amet</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- //service -->
  <!-- Online Order -->
  <section class="advertise-count">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-6 col-md-6 fashion-collet-txt text-center">
          <h5>Online Order</h5>
          <h6 class="mt-lg-4 mt-3"> Get 25%/off</h6>
          <p class="mt-2">sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet sit amet, eiusmod tempor incididunt ut labore et
            consectetur adipiscing sed do eiusmod</p>
        </div>
        <div class="col-lg-6 col-md-6 text-center">
          <div class="order-show-w3ls">
            <h5> Order Now</h5>

            <ul class="mt-lg-4 mt-3">
              <li>
                <p>
                  <span>Call</span> 010 8855 0561</p>
              </li>
              <li class="mt-lg-3 mt-2">
                <p>
                  <span> Email</span> jeong9041@gmail.com</p>
              </li>
            </ul>
            <div class="order-buttn mt-lg-4 mt-3">
              <a href="/contact" class="btn">Order Now </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--//Online Order -->
  <!-- menu -->
  <section class="collection py-lg-4 py-md-3 py-sm-3 py-3">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <!--row -->
      <div class="row">
        <div class="col-lg-5 col-md-5 collection-w3layouts my-3">
          <h4>Birthday Cake</h4>
          <p class="mt-2">sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, eiusmod tempor incididunt
            ut labore et consectetur adipiscing sed do eiusmod</p>
          <div class="view-buttn mt-lg-5 mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>
        <div class="col-lg-4 col-md-4 collective-images position-relative">
          <img src="/resources/images/t1.jpg" alt="news image" class="img-fluid">
          <div class="position-top-img">
            <img src="/resources/images/t13.jpg" alt="news image" class="img-fluid">
          </div>
        </div>
        <div class="col-lg-3 col-md-3 title-right-side my-3">
          <div class="rotated-title">
            <h3 class="title mb-lg-4 mb-md-3 mb-2">New Menu</h3>
            <h6 class="title-sub">Awesome Taste</h6>
          </div>
        </div>
      </div>
      <!--// row -->
      <!-- row -->
      <div class="row mid-row-grids">
        <div class="col-lg-5 col-md-6 collective-images my-3">
          <img src="/resources/images/s8.jpg" alt="news image" class="img-fluid">
        </div>
        <div class="col-lg-7 col-md-6 collection-w3layouts my-3">
          <h4>Event Cake</h4>
          <p class="mt-2">sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, eiusmod tempor incididunt
            ut labore et consectetur adipiscing sed do eiusmod sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit
            amet Lorem ipsum dolor sit amet, eiusmod tempor incididunt ut labore et consectetur adipiscing sed do eiusmod
            sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, eiusmod tempor incididunt
            ut labore et consectetur adipiscing sed do eiusmod</p>
          <div class="view-buttn mt-lg-5 mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>

      </div>
      <!--// row -->
      <!-- row -->
      <div class="row">
        <div class="col-lg-6 col-md-5 collection-w3layouts my-3">
          <h4> Wedding Cake</h4>
          <p class="mt-2">sed do eiusmod tempor incididunt ut Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, eiusmod tempor incididunt
            ut labore et consectetur adipiscing sed do eiusmod</p>
          <div class="view-buttn mt-lg-5 mt-md-4 mt-3">
            <a href="/single" class="btn">Read More </a>
          </div>
        </div>
        <div class="col-lg-3 col-md-4 collective-images my-3">
          <img src="/resources/images/s9.jpg" alt="news image" class="img-fluid">
        </div>
        <div class="position-top-three col-md-3 my-3">
          <img src="/resources/images/s10.jpg" alt="news image" class="img-fluid">
        </div>
      </div>
      <!--// row -->
    </div>
  </section>
  <!--//menu -->
  <!-- client -->
  <section class="client py-lg-4 py-md-3 py-sm-3 py-3" id="client">
    <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6 cilent-item text-center my-3">
          <div class="clients-ile-img">
            <img src="/resources/images/cc2.jpg" alt=" " class="img-fluid">
            <div class="clients-color-ile text-center mt-lg-4 mt-3">
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit Lorem ipsum dolor sit amet
              </p>
              <div class="mt-3 clients-txt-ile">
                <h4>Jack Will</h4>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 cilent-item text-center my-3">
          <div class="clients-ile-img">
            <img src="/resources/images/cc1.jpg" alt=" " class="img-fluid">
            <div class="clients-color-ile text-center mt-lg-4 mt-3">
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit Lorem ipsum dolor sit amet
              </p>
              <div class="mt-3 clients-txt-ile">
                <h4>Sam Deo</h4>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 cilent-item text-center my-3">
          <div class="clients-ile-img">
            <img src="/resources/images/cc2.jpg" alt=" " class="img-fluid">
            <div class="clients-color-ile text-center mt-lg-4 mt-3">
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit Lorem ipsum dolor sit amet
              </p>
              <div class="mt-3 clients-txt-ile">
                <h4>Max Rox</h4>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-3 col-md-6 col-sm-6 title-right-side my-3">
          <div class="rotated-title">
            <h3 class="title mb-lg-4 mb-md-3 mb-2">Clients</h3>
            <h6 class="title-sub">Some Words</h6>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--//client -->
  <!-- footer -->
  <section class="py-lg-4 py-md-3 py-sm-3 py-3 bottom-footers">
    <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
      <div class="row">
        <div class="col-lg-3 col-md-6 col-sm-6 bottom-footer-left">
          <div class="social-icons mb-lg-4 mb-3">
            <ul>
              <li class="facebook">
                <a href="http://www.naver.com">
                  <span class="fa fa-facebook"></span>
                </a>
              </li>
              <li class="twitter">
                <a href="http://www.google.com">
                  <span class="fa fa-twitter"></span>
                </a>
              </li>
              <li class="rss">
                <a href="http://www.daum.net">
                  <span class="fa fa-rss"></span>
                </a>
              </li>
            </ul>
          </div>
          <p>Lorem ipsum dolor sit amet consectetuer adipiscing elit Lorem ipsum dolor sit amet consectetuer </p>
          <div class="footer-w3layouts-head mt-2">
            <h2>
              <a href="/">Chocolate</a>
            </h2>
          </div>
        </div>
        <div class="footer-info-bottom col-lg-3 col-md-6 col-sm-6 text-center">
          <h4 class="pb-lg-4 pb-md-3 pb-3">Nav Links</h4>
          <ul class="bottom-menu">
            <li class="py-sm-2 py-1">
              <a href="/">Home</a>
            </li>
            <li class="py-sm-2 py-1">
              <a href="/about">About</a>
            </li>
            <li class="py-sm-2 py-1">
              <a href="/service">Service</a>
            </li>
            <li class="py-sm-2 py-1">
              <a href="/gallery">Gallery</a>
            </li>
            <li>
              <a href="/contact">Contact</a>
            </li>
          </ul>
        </div>
        <div class="footer-info-bottom col-lg-3 col-md-6 col-sm-6 col-sm-6 text-center">
          <h4 class="pb-lg-4 pb-md-3 pb-3">Twitter Us</h4>
          <div class="footer-office-hour">
            <ul>
              <li>
                <p>sit amet consectetur adipiscing</p>
              </li>
              <li class="my-1">
                <p>
                  <a href="mailto:info@example.com">info@example.com</a>
                </p>
              </li>
              <li class=" mb-sm-3 mb-2">
                <span>Posted 3 days ago.</span>
              </li>
              <li>
                <p>sit amet consectetur adipiscing</p>
              </li>
              <li class="my-1">
                <p>
                  <a href="mailto:info@example.com">info@example.com</a>
                </p>
              </li>
              <li>
                <span>Posted 3 days ago.</span>
              </li>
            </ul>
          </div>
        </div>
        <div class="footer-info-bottom col-lg-3 col-md-6 col-sm-6 text-center">
          <h4 class="pb-lg-4 pb-md-3 pb-3">NewsLetter</h4>
          <div class="newsletter-footers">
            <form action="#" method="post">
              <input type="email" name="Your Email" class="form-control" placeholder="Your Email" required="">
              <button type="submit" class="btn1 mt-3">SubScribe</button>
            </form>
          </div>
          <div class="footer-office-hour mt-sm-3 mt-2">
            <p>vehicula velit sagittis vehicula. Duis posuere ex in mollis iaculis. Suspendisse tincidunt velit</p>
          </div>
        </div>
      </div>
      <!-- move icon -->
      <div class="text-center">
        <a href="#home" class="move-top text-center mt-3">
          <i class="fa fa-arrow-up" aria-hidden="true"></i>
        </a>
      </div>
      <!--//move icon -->
    </div>
  </section>
  <footer>
    <div class="bottem-wthree-footer text-center py-md-4 py-3">
      <p>
        Â© 2019 Gateau. All Rights Reserved | Design by
        <a href="http://www.W3Layouts.com" target="_blank">W3Layouts</a>
      </p>
    </div>
  </footer>
  <!--//footer -->
</body>

</html>