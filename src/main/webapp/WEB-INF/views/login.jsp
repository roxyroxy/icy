<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<title>ICY - I Challenge You</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<!-- Fonts -->
<link href="${pageContext.request.contextPath}/css/animate.css"
	rel="stylesheet" />
<!-- Squad theme CSS -->
<link href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/default.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/fonts/glyphicons-halflings-regular.woff"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/fonts/glyphicons-halflings-regular.ttf"
	rel="stylesheet" />
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />
<link type="text/css" rel="stylesheet" href="css/register.css" />

</head>

<body onload='document.f.j_username.focus();' id="page-top"
	data-spy="scroll" data-target=".navbar-custom">

	<!-- Preloader -->
	<div id="preloader">
		<div id="load"></div>
	</div>

	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand" href="login.jsp">
					<h1>ICY</h1>

				</a>

			</div>
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#intro">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#service">Service</a></li>
					<li><a href="#contact">Contact</a></li>
					<li><a href="#" id="login">Login</a></li>
					<!--  <li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Example menu</a></li>
							<li><a href="#">Example menu</a></li>
							<li><a href="#">Example menu</a></li>
						</ul></li>-->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Section: intro -->
	<section id="intro" class="intro">

		<table width="100%">
			<tr>
				<td><br />
					<div class="slogan">
						<c:if test="${not empty param.contactStatus}">
							<div class="alert alert-error"
								style="color: red; font-size: 20px">
								<c:out value="${param.contactStatus}" />
							</div>
						</c:if>
						<table>
							<tr>
								<td>
									<h2>
										I CHALLENGE <span class="text_color">YOU</span>
									</h2>
								</td>
								<td><img
									src="${pageContext.request.contextPath}/img/ICYLogo.png"
									alt="Image could not be displayed" /></td>
							</tr>
						</table>
						<h4>WE ARE A TEAM TRYING TO MAKE AN AWESOME APP FOR YOU.</h4>


					</div></td>
				<td align="right">
					<!-- Login part -->

					<div class='table-row'>
						<div class="cell2">
							<c:if test="${not empty param.login_error}">
								<div class="alert alert-error">
									<a href="#" class="close" data-dismiss="alert">&times;</a>
									<p style="color: red">Invalid username or password.</p>
								</div>
							</c:if>

							<form class="form-signin" name='f'
								action="<c:url value='/resources/j_spring_security_check' />"
								method='POST' id="login">

								<input type="text" name='j_username' class="input-block-level"
									placeholder="Username" required> <input type="password"
									name='j_password' class="input-block-level"
									placeholder="Password" required>
								<button class="btn btn-large btn-primary" type="submit"
									name="submit" value="Submit">Connect</button>
								<br /> <a
									href='${pageContext.request.contextPath}/user/sendMail'>
									Forgotten password? </a>
							</form>
						</div>
						<!-- End of login cell2 -->
						<div class="cellregister">
							<br />
							<h4>Don't have an account?</h4>
							<h4>
								<a id="modal_trigger" href="#modal">REGISTER</a> now for an
								unforgetable experience!
								<c:if test="${not empty param.register_feedback}">
									<div class="alert alert-error"
										style="color: red; font-size: 15px">
										<c:out value="${param.register_feedback}" />
									</div>
								</c:if>
							</h4>
						</div>
						<!-- End of login cellregister -->
					</div>
				</td>
			</tr>
		</table>
		<br />
		<h4>ARE YOU A COMPANY? DON'T MISS THIS VIDEO!</h4>
		<video width="520" height="440" controls style="margin-top: 2px">
			<source
				src="${pageContext.request.contextPath}/video/ichallengeyou.mp4"
				type="video/mp4">
		</video>

		<!-- REGISTER POP UP -->

		<div id="modal" class="popupContainer" style="display: none;">
			<header class="popupHeader">
				<span class="header_title">Login</span> <span class="modal_close"><i
					class="fa fa-times"></i></span>
			</header>

			<section class="popupBody">
				<!-- Social Login -->
				<div class="social_login">
					<p>Here you sign up as a user. You wil be able to participate
						in challenges and add your own challenges. If you are a company or
						a startup, please contact us to find out more about the benefits
						of using our application.</p>
					<!--  
					<div class="">
						<a href="#" class="social_box fb"> <span class="icon"><i
								class="fa fa-facebook"></i></span> <span class="icon_title">Connect
								with Facebook</span>
						</a> <a href="#" class="social_box google"> <span class="icon"><i
								class="fa fa-google-plus"></i></span> <span class="icon_title">Connect
								with Google</span>
						</a>
					</div>-->

					<div class="action_btns">
						<div class="one_half last">
							<a href="#" id="register_form" class="btn btn_red">Sign up</a>
						</div>
					</div>
				</div>

				<!-- Register Form -->
				<div class="user_register">
					<form:form method="post"
						action="${pageContext.request.contextPath}/user/register"
						modelAttribute="account" cssClass="form-horizontal"
						value="/register">
						<c:if test="${not empty param.status}">
							<div class="alert alert-error" style="color: red">
								<c:out value="${param.status}" />
							</div>
						</c:if>
						<label for="username">Username</label>

						<div class="controls">
							<form:input path="username" cssClass="span3"
								cssErrorClass="error" required="required" />
							<font color="red"> <form:errors path="username"
									cssClass="error help-inline inline" element="span" />
							</font>
						</div>
						<br />
						<label for="email">Email Address</label>
						<div class="controls">
							<form:input path="email" cssClass="span3" cssErrorClass="error"
								required="required" />
							<font color="red"> <form:errors path="email"
									cssClass="error help-inline inline" element="span" />
							</font>
						</div>
						<br />
						<label for="password">Password</label>
						<div class="controls">
							<form:input type="password" path="password" cssClass="span3"
								cssErrorClass="error" required="required" />
							<font color="red"> <form:errors path="password"
									cssClass="error help-inline inline" element="span" />
							</font>
						</div>
						<br />
						<label for="confirmPassword">Confirm Password</label>
						<div class="controls">
							<form:input type="password" path="confirmPassword"
								cssClass="span3" cssErrorClass="error" required="required" />
							<font color="red"> <form:errors path="confirmPassword"
									cssClass="error help-inline inline" element="span" />
							</font>
						</div>
						<br />

						<div class="checkbox">
							<form:checkbox path="receiveNewsletter" />
							<label for="send_updates">Send me occasional email
								updates</label>
						</div>
						<form:hidden path="id" />
						<div class="action_btns">
							<div class="one_half">
								<a href="#" class="btn back_btn"><i
									class="fa fa-angle-double-left"></i> Back</a>
							</div>

							<div class="one_half last">
								<input type="submit" class="btn btn_red" value="Register">&nbsp;
							</div>


						</div>
					</form:form>
				</div>
			</section>
		</div>
		<!-- End of register -->

		<div class="page-scroll">
			<a href="#service" class="btn btn-circle"> <i
				class="fa fa-angle-double-down animated"></i>
			</a>
		</div>
	</section>
	<!-- /Section: intro -->

	<!-- Section: about -->
	<section id="about" class="home-section text-center">
		<div class="heading-about">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="wow bounceInDown" data-wow-delay="0.4s">
							<div class="section-heading">
								<h3>About us</h3>
								<i class="fa fa-2x fa-angle-down"></i>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">

			<div class="row">
				<div class="col-lg-2 col-lg-offset-5">
					<hr class="marginbot-50">
				</div>
			</div>
			<div class="row">
				<div class="col-xs-6 col-sm-3 col-md-3">
					<div class="wow bounceInUp" data-wow-delay="0.2s">
						<div class="team boxed-grey">
							<div class="inner">
								<h5>Roxy</h5>
								<div class="avatar">
									<img src="${pageContext.request.contextPath}/img/team/1.jpg"
										alt="" class="img-responsive img-circle" />
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-3">
					<div class="wow bounceInUp" data-wow-delay="0.5s">
						<div class="team boxed-grey">
							<div class="inner">
								<h5>Lou</h5>
								<div class="avatar">
									<img src="${pageContext.request.contextPath}/img/team/2.jpg"
										alt="" class="img-responsive img-circle" />
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-3">
					<div class="wow bounceInUp" data-wow-delay="0.8s">
						<div class="team boxed-grey">
							<div class="inner">
								<h5>Ric</h5>
								<div class="avatar">
									<img src="${pageContext.request.contextPath}/img/team/3.jpg"
										alt="" class="img-responsive img-circle" />
								</div>

							</div>
						</div>
					</div>
				</div>
				<div class="col-xs-6 col-sm-3 col-md-3">
					<div class="wow bounceInUp" data-wow-delay="1s">
						<div class="team boxed-grey">
							<div class="inner">
								<h5>Nidhi</h5>
								<div class="avatar">
									<img src="${pageContext.request.contextPath}/img/team/4.jpg"
										alt="" class="img-responsive img-circle" />
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: about -->


	<!-- Section: services -->
	<section id="service" class="home-section text-center bg-gray">

		<div class="heading-about">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="wow bounceInDown" data-wow-delay="0.4s">
							<div class="section-heading">
								<h3>Our Services</h3>
								<i class="fa fa-2x fa-angle-down"></i>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-lg-offset-5">
					<hr class="marginbot-50">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInLeft" data-wow-delay="0.2s">
						<div class="service-box">
							<div class="service-icon">
								<img
									src="${pageContext.request.contextPath}/img/icons/service-icon-1.png"
									alt="" />
							</div>
							<div class="service-desc">
								<h5>Challenges Design</h5>
								<p>Our creative team is designing the most awesome
									challenges for you.</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="service-box">
							<div class="service-icon">
								<img
									src="${pageContext.request.contextPath}/img/icons/service-icon-2.png"
									alt="" />
							</div>
							<div class="service-desc">
								<h5>Web Design</h5>
								<p>We are developing a web page where you can create your
									own challenges and participate in your friends' challenges .</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInUp" data-wow-delay="0.2s">
						<div class="service-box">
							<div class="service-icon">
								<img
									src="${pageContext.request.contextPath}/img/icons/service-icon-3.png"
									alt="" />
							</div>
							<div class="service-desc">
								<h5>Companies involvment</h5>
								<p>We are trying to get companies to enter our ecosystem and
									add challenges and prizes for you .</p>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-3 col-md-3">
					<div class="wow fadeInRight" data-wow-delay="0.2s">
						<div class="service-box">
							<div class="service-icon">
								<img
									src="${pageContext.request.contextPath}/img/icons/service-icon-4.png"
									alt="" />
							</div>
							<div class="service-desc">
								<h5>Cloud System</h5>
								<p>We are currently operating in the cloud - Heroku.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: services -->
	<!-- Section: contact -->
	<section id="contact" class="home-section text-center">
		<div class="heading-contact">
			<div class="container">
				<div class="row">
					<div class="col-lg-8 col-lg-offset-2">
						<div class="wow bounceInDown" data-wow-delay="0.4s">
							<div class="section-heading">
								<h3>Get in touch</h3>
								<i class="fa fa-2x fa-angle-down"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-lg-offset-5">
					<hr class="marginbot-50">
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<div class="boxed-grey">
						<form:form method="post"
							action="${pageContext.request.contextPath}/contact"
							modelAttribute="contactData" cssClass="form" id="contact-form">
							<fieldset>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Name</label>
											<form:input path="name" type="text" class="form-control"
												id="name" placeholder="Enter name" required="required" />
										</div>
										<div class="form-group">
											<label for="email"> Email Address</label>
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-envelope"></span> </span>
												<form:input path="email" type="email" class="form-control"
													id="email" placeholder="Enter email" required="required" />
											</div>
										</div>
										<div class="form-group">
											<label for="subject"> Subject</label>
											<form:select id="subject" path="subject" name="subject"
												class="form-control" required="required">
												<form:option value="na" selected="">Choose One:</form:option>
												<form:option value="service">General Customer Service</form:option>
												<form:option value="suggestions">Suggestions</form:option>
												<form:option value="product">Product Support</form:option>
											</form:select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="name"> Message</label>
											<form:textarea path="message" name="message" id="message"
												class="form-control" rows="9" cols="25" required="required"
												placeholder="Message"></form:textarea>
										</div>
									</div>
									<div class="col-md-12">

										<input type="submit" class="btn btn-skin pull-right"
											id="btnContactUs" value="Send Message">&nbsp;
									</div>
								</div>
							</fieldset>
						</form:form>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="widget-contact">
						<h5>Main Office</h5>
						<address>
							<strong>ICY, Inc.</strong><br> Beaulieu <br> Rennes,
							35700<br> <abbr title="Phone">P:</abbr> (065) 2968012
						</address>
						<address>
							<strong>Email</strong><br> <a href="mailto:#">ichallengeyu@gmail.com</a>
						</address>
						<address>
							<strong>We're on social networks</strong><br>
							<ul class="company-social">
								<li class="social-facebook"><a href="#" target="_blank"><i
										class="fa fa-facebook"></i></a></li>
								<li class="social-twitter"><a href="#" target="_blank"><i
										class="fa fa-twitter"></i></a></li>
								<li class="social-dribble"><a href="#" target="_blank"><i
										class="fa fa-dribbble"></i></a></li>
								<li class="social-google"><a href="#" target="_blank"><i
										class="fa fa-google-plus"></i></a></li>
							</ul>
						</address>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- /Section: contact -->
	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<div class="wow shake" data-wow-delay="0.4s">
						<div class="page-scroll marginbot-30">
							<a href="#intro" id="totop" class="btn btn-circle"> <i
								class="fa fa-angle-double-up animated"></i>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</footer>
	<!-- Core JavaScript Files -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" /></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery.easing.min.js" /></script>
	<script src="${pageContext.request.contextPath}/js/jquery.scrollTo.js" /></script>
	<script src="${pageContext.request.contextPath}/js/wow.min.js" /></script>
	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/js/custom.js" /></script>

	<!-- Register pop up -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.leanModal.min.js"></script>
	<script type="text/javascript">
		$("#modal_trigger").leanModal({
			top : 200,
			overlay : 0.6,
			closeButton : ".modal_close"
		});
		$(function() {
			$(".cell2").hide();
			//calling login
			$("#login").click(function() {

				$(".cell2").show();

				return false;
			});
			// Calling Register Form
			$("#register_form").click(function() {
				$(".social_login").hide();
				$(".user_register").show();
				$(".header_title").text('Register');
				return false;
			});
			// Going back to Social Forms
			$(".back_btn").click(function() {
				$(".user_login").hide();
				$(".user_register").hide();
				$(".social_login").show();
				$(".header_title").text('Login');
				return false;
			});
		});
	</script>
	<br />
	<div align="right">
		<!-- Start of StatCounter Code for Default Guide -->
		<script type="text/javascript">
			var sc_project = 10409072;
			var sc_invisible = 0;
			var sc_security = "8817209a";
			var scJsHost = (("https:" == document.location.protocol) ? "https://secure."
					: "http://www.");
			document
					.write("<sc"+"ript type='text/javascript' src='" +
scJsHost+
"statcounter.com/counter/counter.js'></"+"script>");
		</script>
		<noscript>
			<div class="statcounter">
				<a title="shopify site
analytics"
					href="http://statcounter.com/shopify/" target="_blank"><img
					class="statcounter"
					src="http://c.statcounter.com/10409072/0/8817209a/0/"
					alt="shopify site analytics"></a>
			</div>
		</noscript>
		<!-- End of StatCounter Code for Default Guide -->
		<a href="http://statcounter.com/p10409072/?guest=1">View My Stats</a>
	</div>
</body>
</html>
