<!DOCTYPE html>
<html lang="en"><head>
  <meta charset="utf-8">
  <title>Breakroom | Designed By Theme Armada</title>
  <meta name="keywords" content="made with bootstrap, wrap bootstrap themes, bootstrap agency theme, creative bootstrap sites, Agency11 theme, responsive bootstrap theme, mobile website themes, bootstrap portfolio, theme armada">
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width">
  
  <meta property="og:title" content="Breakroom | Designed By Theme Armada">
	<meta property="og:type" content="website">
	<meta property="og:url" content="http://www.themearmada.com/demos/breakroom">
	<meta property="og:site_name" content="Theme Armada">
	<meta property="og:description" content="">

  <!-- Styles -->
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/animate.css">
  <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/custom-styles.css">

  <script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>

  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="/favicon.png">
</head>

<body>
        
  <div class="navbar navbar-inverse navbar-fixed-top animated fadeInDownBig">
    <div class="navbar-inner">
      <div class="container">
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </a>
        <a class="brand" href="#"><img src="img/logo.png" alt="Title"></a>
        <div class="nav-collapse collapse">
          <ul class="nav pull-right">
            <li><a href="index.html">Home</a></li>
            <li><a href="services.html">Services</a></li>
            <li><a href="about.html">About</a></li>
            <li><a href="portfolio.html">Portfolio</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Features <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="blog.html">Blog Loop</a></li>
                <li><a href="individual-blog.html">Blog Individual</a></li>
                <li><a href="individual-work.html">Portfolio Individual</a></li>
                <li><a href="icons.html">Icons</a></li>
                <li><a href="pricing.html">Pricing Tables</a></li>
                <li><a href="components.html">Components</a></li>
              </ul>
            </li>
            <li class="active"><a href="contact.php">Contact</a></li>
            <li><a href="login.html"><span class="light-gray"><i class="icon-user"></i> Login</span></a></li>
            <li><a href="signup.html"><span class="menu-button"> Sign Up</span></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
  </div>
  
  
  <!--Main Content-->
  <section id="content">
    <div class="container">
      <div class="row-fluid">
        <div class="span12">
          
          <!--Bread Crumbs-->
          <ul class="breadcrumb">
            <li><a href="#">Home</a> <span class="divider">/</span></li>
            <li class="active">Contact</li>
          </ul>
        </div>
      </div>
      
      <div class="row-fluid">
        <div class="span12">
          <h2>Get In touch</h2>
          <p class="lead">We Would Love To Hear From You</p>
          <p>Lorem ipsum dolor sit amet, <a href="#" target="_blank">consectetur</a> adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><br />
        </div>
      </div>
      
      <div class="row-fluid">
        
        <?php  

            // check for a successful form post  
            if (isset($_GET['s'])) echo "<div class=\"alert alert-success\">".$_GET['s']."</div>";  
      
            // check for a form error  
            elseif (isset($_GET['e'])) echo "<div class=\"alert alert-error\">".$_GET['e']."</div>";  
      
            ?>  
            
            <form method="POST" action="contact-form-submission.php">
              <div class="row-fluid">
                
                <div class="span4">
                  <div class="control-group">  
                    <div class="controls">  
                      <input type="text" class="input-block-level" name="contact_name" id="input1" placeholder="Your name">  
                    </div>  
                  </div>  
                  <div class="control-group">  
                    <div class="controls">  
                      <input type="text" class="input-block-level" name="contact_email" id="input2" placeholder="Your email address">  
                    </div>  
                  </div>
                  <div class="control-group">  
                    <div class="controls">  
                      <input type="text" class="input-block-level" name="contact_subject" id="input3" placeholder="Subject">  
                    </div>  
                  </div>
					       </div>
					       
					       <div class="span8">
                    <div class="control-group">  
                      <div class="controls">  
                        <textarea name="contact_message" id="input4" class="input-block-level" rows="8" placeholder="The message you want to send to me."></textarea>  
                      </div>  
                    </div>  
                    <div class="text-right">  
                      <input type="hidden" name="save" value="contact">  
                      <button type="submit" class="m-btn">Submit</button>  
                    </div>
					       </div>

        </div><!--End Row-->
      </form>
	
    		    
    </div>
  </section>  
  
  <!--Map Section-->
  <section id="map">
  
    <iframe src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=atlanta&amp;aq=&amp;sll=32.678125,-83.178297&amp;sspn=8.89966,16.907959&amp;ie=UTF8&amp;hq=&amp;hnear=Atlanta,+Fulton,+Georgia&amp;t=m&amp;z=6&amp;iwloc=A&amp;output=embed"></iframe>
    
  </section>
    
  <!--Bottom Section-->
  <section id="bottom">
    <div class="container">
      <div class="row-fluid">
        
        <!--Bottom Section One-->
        <div class="span4">
          <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p><br />
            <a class="more" href="#">+ More</a>
        </div>
        
        <!--Bottom Section Two-->
        <div class="span4">
          <h2>Latest Tweets</h2>
          <div class="row-fluid">
            <div class="span2">
              <i class="icon-twitter icon-2x blue pull-left" style="padding-top:12px;"></i>
            </div>
            
            <div class="span10">
              <div class="twitter-feed">
      					<ul id="twitter_update_list" class="rotate"></ul>
      				</div>
            </div>
  				</div>    		  
        </div>
        
        <!--Bottom Section Three-->
        <div class="span4">
          <h2>Contact Info</h2>
          <p>1234 Main Street | Suit 300<br />
          Atlanta, GA 30303</p>
          <p><i class="icon-phone"></i> <a class="more" href="tel:404.555.5555">404.555.5555</a></p>
          
          <!--Social Icons-->          
          <ul class="social-icons">
  					<li><a class="twitter" href="http://www.twitter.com/themearmada" target="_blank"><i class="icon-twitter icon-large"></i></a></li>
  					<li><a class="facebook" href="http://www.facebook.com" target="_blank"><i class="icon-facebook icon-large"></i></a></li>
  					<li><a class="google" href="http://www.googleplus.com" target="_blank"><i class="icon-google-plus icon-large"></i></a></li>
  					<li><a class="instagram" href="http://www.instagram.com" target="_blank"><i class="icon-camera-retro icon-large"></i></a></li>
  					<li><a class="pinterest" href="http://www.pinterest.com" target="_blank"><i class="icon-pinterest icon-large"></i></a></li>
  					<li><a class="linkedin" href="http://www.linkedin.com" target="_blank"><i class="icon-linkedin icon-large"></i></a></li>
  					<li><a class="Github" href="http://www.github.com" target="_blank"><i class="icon-github-alt icon-large"></i></a></li>
  				</ul>
        </div>
        
      </div>
    </div>
  </section>
  
  <section id="footer">
    <div class="container">
  		<div class="row-fluid">
  			<div class="span4 text-left copyright">
        	<p>&copy; Breakroom. All Rights Reserved.<br />
        	Created by <a href="http://www.themearmada.com" target="_blank">Theme Armada</a></p><br />
  			</div>
  			
  			<div class="span8 text-right">
  				<ul class="footer-links">
  					<li><a href="#" target="_blank">Menu 1</a></li>
  					<li><a href="#" target="_blank">Menu 2</a></li>
  				</ul>
  			</div>
  		</div>
  	</div>
  </section>
  
    
    
    <!-- Javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="js/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/rotate.js"></script>
    <script src="js/twitter-feed.js"></script>
    
    <!--Twitter Handle - Insert your Twitter username below ex: (screen_name=USERNAME&include) -->
    <script src="http://api.twitter.com/1/statuses/user_timeline.json?screen_name=themearmada&amp;include_rts=true&amp;count=4&amp;callback=twitterCallback2" type="text/javascript"></script>
   
    </body>
</html>