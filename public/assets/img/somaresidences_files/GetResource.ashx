/* #Pages/Reset# */
/*------------------------- CSS Reset -------------------------*/
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  font-weight: inherit;
  font-style: inherit;
  font-size: 100%;
  font-family: inherit;
}
/* remember to define focus styles! */
:focus {
  outline: 0;
  
}
ol, ul {
  list-style: none;
}
/* tables still need 'cellspacing="0"' in the markup */
table {
  border-collapse: separate;
  border-spacing: 0px;
}
caption, th, td {
  text-align: left;
  font-weight: normal;
}
blockquote:before, blockquote:after,
q:before, q:after {
  content: "";
}
blockquote, q {
  quotes: "" "";
}
/*added so P tag has space*/

/* #Pages/Clearing# */
/* clearing */

.clearfix {    clear:both;/* height:1px;*/}
.clear {    clear:both; height:1px;}
.float_left {float: left;}
.float_right {float: right;}

/* GENERAL SITE HEADINGS */ 
h1,h2,h3,h4,h5 {
  font-weight: bold;
  margin: 0 0 10px 0;
  line-height: 1.2em;
}
/*css reset end*/

/* #Pages/General# */
/* Common Styles */
/* want the paragraphs to have a nice even margin */


html, body {
  overflow-x: hidden;
}

body {
  font-family: 'Ubuntu', sans-serif;
  margin:0;
  padding:0;
  font-size:14px;
  color:#787878;
}

/* #Pages/0-Master/Footer/ copyrights# */  

/* Privacy Policy */ 
.False {display: none;}


#page-margin {
  background:#fff url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/pattern.png) no-repeat left top;
}
#page-outer {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/slider-bg.png) repeat-x left top;
}
#main-content #MapArea {
  width: 100% !important;
}
#wrapper {
  width:1280px;
  margin: 0 auto;
}
a {
  outline:none;
}

#welcome {padding:10px;}

/* #Pages/Header# */
/*---- Bigin header ------------------*/
#header {
  position: fixed;
  width:100%;
  z-index:99;
}

#top-header {
  width: 100%;
  height: 32px;
  padding: 2px 0 2px 0;
  line-height: 2.2em;
  background:#eeeeee;
  text-align:right;
}

#top-header #social_media {line-height:0em;}

#top-header .wrapper {
  width: 100%;
  max-width:1280px;
  margin: 0 auto;
}

#top-header .top-contact {
  margin-right: 25px;
}

#top-header .top-contact, #top-header .top-contact a, #top-header .top-contact span, #top-header .top-contact span a {
  font-weight:700;
  font-size:17px;
  float: none;
  color:#701F1F;
  display: inline-block;
}
#top-header a, #top-header a img {
  text-decoration:none;
  border:none;
}

#top-header .social_media a, #header .logo {
  opacity: 1; 
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100);    
  transition: opacity 300ms; 
  -webkit-transition: opacity 300ms; 
  -moz-transition: opacity 300ms; 
  -o-transition: opacity 300ms;
}

#topwrapper {
  width: 100%;
  max-width: 1280px;
  margin: 0 auto;
  height: 32px;
}

/*.topwrap-inner {
float: right;
} Effected menu*/

#header-wrapper {
  height: 94px;
  width:1280px;
  margin:0 auto;
  z-index:3;
  background:#CCCCCC;
}

/* #Pages/Header/Logo# */

#header .logo {
  padding: 10px 10px 10px 20px;
  float: left;
  min-width: 183px;
}
#header a, #header a img {
  text-decoration:none;
  border:none;
}
/*---- End header ------------------*/

/* #Pages/Header/Navigation# */
/*---- Bigin Navigation ------------------*/
#main_nav {
  font-size:15px;
}
#main_nav ul {
  padding:0;
  margin:0;
}
#main_nav ul li {
  padding:0 0 0 1px;
  margin:0;
  float: left;
  list-style:none;
}
#main_nav ul li:first-child {
  display:none;
}
#main_nav ul li.residents {
  display:none;
}
#main_nav ul li a {
  height:94px;
  line-height: 6.2em;
  padding: 0 11px;
  display:inline-block;
  color:#787878;
  text-transform: capitalize;
}
#main_nav ul li a:hover, #main_nav ul li.active a {
  background:#701F1F url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/menu-bg.png) repeat-x left top !important;
  
}

#resident_PhaseListContainer {
  margin-top: 115px;
}

/*---- End Navigation ------------------*/

/* #Pages/Header/Social# */

#social_media {
  overflow: hidden;
  white-space: nowrap;
  float: right;
  margin-top: -5px;
}

/* #Pages/Header/New Social Icons-Sprites-and-Fontello# */

#top-header .social_media a {
  margin: 5px 5px 0px 5px !important;
  width: 31px;
  height: 32px;
  display: inline-block;
}

#top-header .social_media a.facebook {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0 0;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.twitter {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -37px 0;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.linkedin {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -74px 0;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.youtube {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0 -39px;
  width: 31px;
  height: 32px;
}
#top-header .social_media a.pinterest {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -75px -78px;
  width: 31px;
  height: 32px;
}
#top-header .social_media a.google {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -37px -39px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.blog {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0 -118px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.myspace {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0 -78px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.dribble {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -74px -118px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.flickr {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0 -157px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.stumbleupon {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -75px -157px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.foursquare {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -37px -197px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.vimeo {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -74px -316px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.yelp {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat 0px -356px;
  width: 31px;
  height: 32px;
}

#top-header .social_media a.apartmentratingscom {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -37px -356px;
  width: 30px;
  height: 31px;
}

#top-header .social_media a.instagram {
  background: url('http://www.somaresidences.com/CMSScripts/Custom/Templates/Global/sprites/social-circle32.png') no-repeat -74px -356px;
  width: 30px;
  height: 31px;
}

/* top mobile icon */
.top-contact .fa-mobile-phone:before, .fa-mobile:before {
  content: "\f10b";
  font-size: 22px;
  position: relative;
  top: 2px;
  right:3px;
  }


/* #social_media {
width: auto;
margin-top: -14px;
display: inline-block;
float: right !important;
}

#top-header .social_media a {
padding: 5px !important;
border-radius: 100%;
}


@font-face {
font-family: "fontello-socialicons";
src: url('http://www.somaresidences.com/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.eot?55207779');
src: url('http://www.somaresidences.com/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.eot?55207779#iefix') format('embedded-opentype'),
url('http://www.somaresidences.com/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.woff?55207779') format('woff'),
url('http://www.somaresidences.com/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.ttf?55207779') format('truetype'),
url('http://www.somaresidences.com/CMSPages/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.svg?55207779#fontello-socialicons') format('svg');
font-weight: normal;
font-style: normal;
}

@media screen and (-webkit-min-device-pixel-ratio:0) {
@font-face {
font-family: "fontello-socialicons";
src: url('http://www.somaresidences.com/RPresourceFiles/Themes/1676ColeAve/font/fontello-socialicons.svg?55207779#fontello-socialicons') format('svg');
}
}

[class^="sicon-"]:before, [class*=" sicon-"]:before {
font-family: "fontello-socialicons";
font-size: 0.9em;
padding: 2em 0em;
font-style: normal;
font-weight: normal;
speak: none;
display: inline-block;
text-decoration: inherit;
width: 1em;
margin-right: .2em;
text-align: center;
font-variant: normal;
text-transform: none;
line-height: 1em;
margin-left: .2em;
}

a.twitter {
color: #fff;
background: #55acee;
padding: 5px;
margin: 2px 5px;
} 
a.pinterest { 
color: #fff;
background: #CC2127;
padding: 5px;
margin: 2px 5px;
} 

a.facebook {
color: #fff;
background: #3B5998;
padding: 5px;
margin: 2px 5px;
}

a.youtube { 
color: #fff;
background: #FF3333;
padding: 5px;
margin: 2px 5px;
} 

a.linkedin {
color: #fff;
background: #007bb6;
padding: 5px;
margin: 2px 5px;
} 

a.google {
color: #fff;
background: #C63D2D;
padding: 5px;
margin: 2px 5px;
} 
a.blog {
color: #fff;
background: #FF9933;
padding: 5px;
margin: 2px 5px;
}

a.apartmentratings {
color: #fff;
background: blue;
padding: 5px;
margin: 2px 5px;
}
.sicon-twitter:before { content: '\e800'; display: inline-block; } 
.sicon-pinterest:before { content: '\e801'; display: inline-block; } 
.sicon-facebook:before { content: '\e802'; display: inline-block;}
.sicon-youtube:before { content: '\e803'; display: inline-block;} 
.sicon-linkedin:before { content: '\e804'; display: inline-block; } 
.sicon-google:before { content: '\e805'; display: inline-block;} 
.sicon-blog:before { content: '\e806'; display: inline-block;}
.sicon-blog:before { content: '\e807'; display: inline-block;} */

/* #Pages/Callout# */
/* #Pages/Callout/Callout-Header# */
#header-callout {
  float: right;
  width: 30%;
  margin-top:0px;
  position:relative;
}
#header-callout .callout_01 {
  padding: 10px;
  padding-bottom: 55px;
  margin: 0 0 10px 0;
  background:#D8D8D8;
  /*min-width: 364px; not good for tablet */
}
#header-callout .callout_02 {
  padding:10px;
  font-size:20px;
  min-width: 364px;
  font-weight:300;
  position: fixed;
  text-align: center;
  display:none;
  color:#CCCCCC;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/black-transparent.png) repeat center top;
}
#header-callout.not-home .callout_02 {
  display:none;
}
#header-callout .callout_02 > p {
  float: left;
  margin: 0;
  /*width: 64%;*/
}
#header-callout .callout_02 div{
  font-size:38px;
  font-weight:500;
  color:#701F1F;
  text-shadow: 1px 1px 0 #000000;
}
#header-callout a {
  display:block;
  text-align:center;
  font-weight:500;
  color:#787878;
  padding: 12px 0;
}

#header-callout .fa {
  font-size: 20px;
  color:#701F1F!important;
}
#header-callout a.bt1 {
  font-size: 24px;
  padding: 14px 0;
  margin: 0 0 5px 0;
  color:#CCCCCC;
  background-color:#701F1F!important;
}
#header-callout a.bt2, #header-callout a.bt3 {
  float: left;
  width: 49%;
}
#header-callout a.bt1, #header-callout a.bt2, #header-callout a.bt3 {
  opacity: 1; 
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100);    
  transition: opacity 300ms; 
  -webkit-transition: opacity 300ms; 
  -moz-transition: opacity 300ms; 
  -o-transition: opacity 300ms;
  background-color:#CCCCCC;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}
#header-callout a.bt1:hover, #header-callout a.bt2:hover, #header-callout a.bt3:hover {
  opacity:0.6; 
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=60);    
  transition: opacity 300ms; 
  -webkit-transition: opacity 300ms; 
  -moz-transition: opacity 300ms; 
  -o-transition: opacity 300ms;
}
#header-callout a.bt3 {
  float: right;
}
#header-callout a.bt3 span{
  padding-left: 17px;
}

/* #Pages/Header/Spotlight# */
#spotlight {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/slider-bg.png) repeat-x center top;
  clear:both;
}
#spotlight #slideshow {
}
.flex-control-nav {
  display:none;
}
#spotlight ul, #spotlight ul li {
  padding:0;
  margin:0;
}
#spotlight ul li {
  padding:0;
  margin:0;
  float: none;
}

/* #Pages/Slider# */
#slider1 {
  width: 1473px;
  margin: 0 auto;
  position: relative;
  overflow:hidden;
}
#slider1 .flexslider{
  text-align:center;
}
#slider img {
  width: 100% !important;
  height: auto !important;
  max-height: 464px;
  margin: 0 auto;
}
.flexslider {
  border: 0 none !important;
  border-radius: 0 0 0 0 !important;
  box-shadow: 0 0 0 rgba(0, 0, 0, 0.2) !important;
  margin: 0 !important;
}

#slider .nivo-caption {
  display:none;
}
#spotlight .flex-direction-nav .flex-prev, #spotlight .flex-direction-nav .flex-next {
  left: 100px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/sprite-coleave.png) no-repeat left top;
  width: 75px;
  height: 75px;
  z-index:10;
  opacity: 0;
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=00);    
  transition: opacity 300ms; 
  -webkit-transition: opacity 300ms; 
  -moz-transition: opacity 300ms; 
  -o-transition: opacity 300ms;
  display:none;
}
#spotlight:hover .flex-direction-nav .flex-prev, #spotlight:hover .flex-direction-nav .flex-next {
  display:block;
  opacity: 1;
  filter:progid:DXImageTransform.Microsoft.Alpha(opacity=100);    
  transition: opacity 300ms; 
  -webkit-transition: opacity 300ms; 
  -moz-transition: opacity 300ms; 
  -o-transition: opacity 300ms;
}

#spotlight .flex-direction-nav .flex-next {
  right: 100px;
  left:inherit;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/sprite-coleave.png) no-repeat left -75px;
}

.nivo-caption {
  display: none !important;
}

.slider-shadow {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/slider-hover-shadow.png) no-repeat left top / 100% 100%;
  width: 100%;
  height: 100%;
  position:absolute;
  top:0;
  left:0;
  z-index:1;
}
.hover-pattern {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/slider-hover-pattern.png) repeat left top;
  width: 100%;
  height: 100%;
  position:absolute;
  top:0;
  left:0;
  z-index:1;
}

/* #Pages/Callout/Footer-Callout */
#callout {
  padding: 35px 0;
  position: relative;
  z-index:2;
  background:#CCCCCC;
}
#callout #wrapper {
  position:relative;
}
#callout_box1, #callout_box2, #callout_box3 {
  width: 30%;
  float: left;
  margin: 0 0 0 3%;
  position:relative;
}
#callout a {
  text-decoration:none;
}
#callout .CallToActionImage img {
  max-width: 100%;
  height: auto;
  -moz-box-shadow: 0px 0px 5px #d8d7d7;
  -webkit-box-shadow: 0px 0px 5px #d8d7d7;
  box-shadow: 0px 0px 5px #d8d7d7;
}

#callout .footer_text {
  text-align: center;
  font-size:15px;
  width: 60%;
  margin: 0 auto;
  position: absolute;
  bottom:3px;
  left: 17%;
  padding:22px 15px!important;
  text-transform: uppercase;
  width: 58%;
  font-weight:500;
  background:#701F1F;
  color:#CCCCCC;
  transition: all 0.5s ease 0s;
}
#callout_box1 .footer_text:hover, #callout_box2 .footer_text:hover, #callout_box3 .footer_text:hover{
  background:#787878;
}
#callout .callout_box3 {
  margin-top: -71px!important;
  -moz-box-shadow: 0px 0px 5px #d8d7d7;
  -webkit-box-shadow: 0px 0px 5px #d8d7d7;
  box-shadow: 0px 0px 5px #d8d7d7;
}

/* #Pages/Callout/Contact-Callout# */
#callout .contact-callout {
  background-color:#CCCCCC;
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/callout-bg.jpg) repeat-x scroll left top transparent;
  border: 7px solid #CCCCCC;
  height: 214px;
  padding: 20px 13% 10px 10px;
  text-align: right;
}

#callout .contact-callout .fa {
  font-size: 20px;
  padding-left: 25px;
  float: right;
  width: 30px;
  height: auto;
  text-align: center;
  color:#701F1F!important;
}
#callout .contact-callout .footer_text {
  bottom:0px;
}
#callout .contact-callout .footer_text a, #callout .contact-callout .footer_text a:hover {
  color:#CCCCCC;
}

#callout .contact-callout a {
  font-size: 15px;
  font-weight:500;
  color:#787878;
}
#callout .contact-callout div {
  clear:both;
  padding: 7px 0;
  white-space: nowrap;
  text-overflow: ellipsis;
  overflow: hidden;
}

#callout .contact-callout img {
  width: auto;
  height: auto;
  float: right;
  margin: 0 0 0 20px;
  border:none;
  transition: all 0.5s ease 0s;
  background:#701F1F;
}
img.imgVignette {
  display:none;
}


#callout .contact-callout a:hover img {
  margin: 0 0 0 10px;
  background:#787878;
}
#callout .contact-callout a:hover {
  color:#701F1F;
}
.container-wrapper {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/welcome-content-top-shadow.png) repeat-x left top;
}
.ft-shadow {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/welcome-content-bottom-shadow.png) repeat-x left bottom;
  padding: 30px 0;
}
#welcome {
  font-family: Verdana,Geneva,sans-serif;
  text-align: center;
}
#welcome a {
}
h1 {
  font-weight:500;
  font-size: 42px;
  margin:0 0 10px 0;
  font-family: "Geneva", "Verdana", sans-serif;
}
h2 {
  font-weight:500;
  font-size: 26px;
  margin:0 0 20px 0;
}

#p_lt_zoneContent_pageplaceholder_p_lt_zonecontentLeft1_WebPartLoader_ctl00_section_slidersliderd_container {margin:20px auto;}

/* #Pages/Footer# */
#footer {
  text-align: center;
  padding-top: 35px;
  background:#CCCCCC;
}
#footer a, #footer a img {
  text-decoration:none;
  color:#787878;
}
#footer .ft-address {
  padding: 0 0 20px 0;
}
#footer .footer_nav {
  padding: 0 0 20px 0;
}
.footer_nav ul {
  margin:0;
  padding:0;
}
.footer_nav ul li {
  margin:0;
  padding:0;
  display:inline;
  font-size: 12px;
  border-left: 1px solid #787878;
}  

.ActionFooterText {
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
}


.footer_nav ul li:first-child {
  border:none;
}
.footer_nav ul li a {
  margin:0;
  padding:0 7px;
  display:inline;
  font-size: 14px;
  text-transform:capitalize;
}
#footer .footer_nav ul li a:hover, #footer .footer_nav ul li.active a {
  color:#701F1F;
}
#footer .footer_nav ul li.active a {
  font-weight: 600;
}
#footer .office-hours {
  font-size: 12px;
}
.copyright {
  padding: 20px 0 20px 0;
  margin-top: 30px;
  
  
  font-size: 11px;
  border-top: 3px solid #f0f0f0;
}
#footer .copyright a:hover {
  color:#701F1F;
}
#footer .footer-logo {
  padding: 0 0 15px 0;
}
#footer .footer-logo img {
  margin: 0 15px;
}

/* #Pages/Footer/Read-More# */
.readmore {}
.readmore hr {
  display:none;
}
.readmore .read-more, .readmore .details {
  padding: 10px 0 0 0;
} 
.readmore .read-more a, .readmore .details a {
  text-decoration:none;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/readmore-arrow.png) no-repeat center 6px;
  padding: 0 0 20px 0;
  font-size:12px;
  text-transform:uppercase;
  color:#787878;
}
.readmore .read-more a:hover, .readmore .details a:hover {
  color:#701F1F;
}
.readmore .details a {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/readmore-arrow.png) no-repeat center -24px;
}

.main-inside {
  padding: 172px 0 0 0;
}
.main-inside h1 {
  font-size: 35px;
}

/* #Pages/Misc# */


#callout{
  display:none;
}
.infobox_textcontent {
  font-size: 13px;
}
.infobox_textcontent .infowindow_header {
  font-size: 18px;
  font-weight:bold;
  color:#701F1F;
}
#rp_n_3_accordion .pane a {
  background-color:#787878;
}
#page-margin .page_floorplans , #page-margin .page_gallery, #page-margin .dvAmenityZone, 
#page-margin .page_neighborhood, #page-margin .page_contactus, #page-margin .specials, 
#page-margin .privacy-policy-page, #page-margin .siteMap, #page-margin .thankyoupage, 
#page-margin .SocialReferral, #page-margin .specials-page, #page-margin .page_blog  {
  margin: 162px auto 0;
  background-color: #FFFFFF;
  padding: 30px;
  position: relative;
  box-sizing:border-box;
  /*min-height: 1300px;*/
  /*overflow: hidden; stop */
}

.SocialReferral .flexslider .flex-control-nav {display:block;}
.flex-control-nav li {padding-bottom:5px;}

/* #Pages/Header/H1-Spacing# */
#page-margin .page_floorplans h1, #page-margin .page_gallery h1:nth-child(1), #page-margin .dvAmenityZone h1:nth-child(1), 
#page-margin .page_neighborhood h1, #page-margin .page_contactus h1, #page-margin .special h1, 
#page-margin .privacy-policy-page h1, #page-margin .siteMap h1, #page-margin .thankyoupage h1, #page-margin .SocialReferral h1, 
#page-margin .page_blog .pageHeader{
  margin: -85px 0 40px 0;
  text-shadow: 1px 1px 0 #787878;
  font-size: 35px;
  font-weight: 500;
  color: #CCCCCC;
}

#page_gallery_bottom_content #readmore1 h1:nth-child(1) {
  margin:0 0 10px 0;
  color:#701F1F;
}

.main-inside > h1 {
  color: white;
  margin-left: 30px;
}
.main-inside h1 {
  margin-top: -90px;
  padding-bottom: 36px;
  text-shadow: 1px 1px 0 #787878;
  color: #CCCCCC;
}

/* #Pages/Callout/H1 Footer Inner Pages# */

/*#page-margin .page_floorplans h1:nth-child(2), #page-margin .page_gallery h1:nth-child(2), #page-margin .dvAmenityZone h1:nth-child(2), 
#page-margin .page_contactus h1:nth-child(2), #page-margin .special h1:nth-child(2), 
#page-margin .privacy-policy-page h1:nth-child(2), #page-margin .siteMap h1:nth-child(2), #page-margin .thankyoupage h1:nth-child(2), #page-margin .SocialReferral h1:nth-child(2) { 
  visibility: hidden;
}*/

/* #Pages/Callout/Callout-Testimonal# */
#callout .rmo2Testimonial {
  left:13px;
  top: -71px;
  height: 40px;
  margin:0;
  width: 69%;
  z-index:-1;
}
#callout .rmo2Testimonial .pnlRmo2Opacity {
  height: 35px;
  width: 100% !important;
  opacity: 0.6;
  font-style:italic;
  background-color:#000000;
}
#callout .rmo2Testimonial .testimonialIcon {
  left: 28px;
  margin-top: 8px;
  position: absolute;
  width: 24px;
}
#callout .rmo2Testimonial .pnlTestimonials {
  margin-left: 70px;
  margin-top: 8px;
  text-align: left;
  width: auto;
  font-style:italic;
}
#callout .rmo2Next {
  background: none repeat scroll 0 0 transparent;
  height: 40px;
  left: 66%;
  margin-left: 0;
  margin-top: 0;
  top: -80px;
  width: 20px;
  z-index: 99;
}
#callout .rmo2Next .rmo2Icon {
  margin-top: 19px;
  background: url(http://www.somaresidences.com/rpresourcefiles/Themes/1676ColeAve/images/rmo_arrow.png) no-repeat left top!important;
}

/* for alignment of submit button */

#cu_2_formdiv .cu-2-submit
{
  margin:15px auto !important;
  float:none !important;
}


/**HOME PAGE MODS **/
#callout #wrapper .testimonial-lightbox {
  top: -94%!important;
}
.testimonial-lightbox {
  margin-top: 0px !important;
  position: absolute !important;
}

.rmo2Testimonial .testimonial {
  line-height: 0.45em !important;
  height: 80px !important;
  overflow: visible !important;
}

.Lease {
  font-size: 16px;
  
}
.number, .number a {
  font-size: 25px !important;
  color:#701F1F !important;
  background-image: none !important;
  cursor: auto;
}
.low-content{
  margin-top: 15px; 
}
.low-content1 {
  float: left;
  text-align: center;
  width: 33.3%;
}
.bottom-content {
}

/* #Pages/Footer/Read-More/Walkscore# */
.home-walkscore a {
  font-size:18px!important;
  text-decoration:none!important;
  color:#701F1F!important;
}
.home-walkscore a, .callout1 a, .low-content1 a {
  background-image: none !important;
}
.low-content1 > img {
  
  margin: 0 10px 0 0;
}

/* #Pages/Callout/Callout-Welcome# */

.details .welcome-callout {
  line-height:4em;
  display: block; 
  width: 100%;
  background-color:#CCCCCC;
  box-shadow: 1px 1px 1px 1px #e9e9e9; 
  font-family: ubuntu;
}
.welcome-callout .callout1 {
  float: left;
  width: 33%;
}
.welcome-callout .callout1 span {
  color: #1DB5D8;
  font-size: 12px;
  left: -18px;
  position: relative;
}
.welcome-callout .callout1 a {
  left: 4%;
  position: relative;
  font-weight: 400;
  text-transform: capitalize !important;
  font-size: 15px;
}
.welcome-callout .callout1 > div {
  height: 70px;
  position: relative;
}
.callout1 a, .callout1 img {
  /* position: relative;
  top: 20%; */
}
.details{
  width: 100%;
}

.welcome-callout .callout:nth-child(1) {margin-left: 5% !important;}
.welcome-callout .callout1 .fa {color: #701F1F;}
.low-content .low-content1 .fa  {color: #701F1F;}


.welcome-callout-bottom {
  position: relative; 
  width: 60%;
  margin: 0 auto 15px auto;
  padding:15px; 
  background:#CCCCCC; 
  box-shadow: 1px 1px 1px 1px #e9e9e9; 
  font-family: ubuntu;
}
.welcome-callout-bottom a {
  text-transform:capitalize!important;
  font-size:13px;
}
.home-walkscore {
  padding: 20px 0;
  font-size:12px;
}
/* Adjusting z-index to keep gallery widget elements behind static header */
ul.amenties-tab ul div.amenities-content-box ul li span{
  color: #787878 !important;
}
.div_img_next, #slider1 {
  z-index: 1;
}

.rpui_thumbScrollBox {
  z-index: 1 !important;
}



.div_img_prev {
  z-index: 1 !important;
}

.div_img_next {
  z-index: 1 !important;
}

.Apartment.AmenityBoxHorizontal.bdr-clr1.clearfix h1 {
  color: #701F1F;
}

/*#spotlight .flex-direction-nav .flex-prev:hover, #spotlight .flex-direction-nav .flex-next:hover {
background-image: url("http://propertywaredesigns.com/leasestar/1676ColeAve/images/sprite_coleave.png");
}*/

.AmenitiesPage ul li {
  list-style-position: inside !important;
  margin-left: 10px;
}
.page_amenites ul#menu li a {
  background:#787878 url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/tab-bg.png) repeat-x scroll left bottom!important;
}
#callout_box1, #callout_box2, #callout_box3 {
  margin-left: 3.31% !important;
}

.rmo2Testimonial{
  z-index: 2;
}
.rmo2Testimonial .pnlRmo2Opacity{
  width: 950px !important;
  
}


#left-contact, #cu_2_formdiv > form, #widget_contact_us_2, #reasonid, #cu_2_body .right{
  color:#787878 !important;
}
.partial-page h1.pull-left {
  display: none !important;
}
/*@media (max-width: 480px) and (min-width: 320px) {

#callout .contact-callout div {
padding-right: 60px !important;
}

}*/

/*----------- End Johnathan ------------------------*/
.welcome-callout
{
  padding:0px 0px 60px;
}

.bottom-content {
  height: 105px;
}

.welcome-callout .callout1 span {
  bottom: 6px;
  float: left;
  left: 42px;
  line-height: 62px;
  position: relative;
  
}

.callout1 a, .callout1 img{vertical-align:middle;}

.CallToActionImage{ display: inline-block; margin:2px 5px 0 0;}
.head_text{ float:left;}

.welcome-callout .callout1 {
  float: left;
  width: 33.3%;
}

.low-content {
  margin: 5% 0;
}
.page_gallery {position: initial !important;}
.page_gallery .flexslider .slides img {
  width:100%!important;
}
.page_gallery #carousel {
  display: block !important;
}

.page_gallery #page_gallery_bottom_content {padding:20px 10px;}

/*----------- End Vishal ------------------------*/

/* #Pages/View-Availability-Live-Chat# */
.live-chat-discription {
  display: none;
  position:absolute;
  text-align:center;
  right:0;
  width:125px;
  font-size:17px;
  color:#FFF;
  padding:50px 20px 35px 20px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/live-chat_bg.png) no-repeat left top;
  background-size:100%;
  z-index:111;
  text-shadow: 0px 1px 1px #000;
}

.view-availability-discription {
  display: none;
  
  position:absolute;
  text-align:center;
  right:10px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  font-size:18px;
  color:#FFF;
  padding:15px;
  background:#1db5d8;
  background-size:100%;
  z-index:111;
  width:265px;
  
}
.view-availability-discription:after {
  border-left: 20px solid rgba(0, 0, 0, 0);
  border-right: 20px solid rgba(0, 0, 0, 0);
  border-bottom: 24px solid #1db5d8;
  top: -19px;
  content: "";
  left: 38px;
  position: absolute;
}
.view-availability-discription-menu {
  display: none;
  position:absolute;
  text-align:center;
  right:715px;
  -moz-border-radius: 6px;
  border-radius: 6px;
  font-size:18px;
  color:#FFF;
  padding:15px;
  background:#1db5d8;
  background-size:100%;
  z-index:111;
  width:265px;
  top:115px;
  
}
.view-availability-discription-menu:after {
  border-left: 20px solid rgba(0, 0, 0, 0);
  border-right: 20px solid rgba(0, 0, 0, 0);
  border-bottom: 24px solid #1db5d8;
  top: -19px;
  content: "";
  left: 38px;
  position: absolute;
}
.cluetip-close a {
  text-decoration:none;
  color:#FFF!important;
}

/* #Pages/Lightbox# */
/*------------ Lightbox CSS ------------------*/
.page-overlay {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/black-transparent.png) repeat left top;
  bottom: 0;
  height: 100%;
  left: 0;
  margin: 0;
  padding: 0;
  position: fixed;
  right: 0;
  top: 0;
  width: 100%;
  z-index: 999;
  display:none;
}
.page-overlay-wrapper {
  margin: 0 auto;
  max-width: 1040px;
  position: relative;
}
.overlay-neighborhood-box, .overlay-floorplan-box, .overlay-gallery-box, .overlay-viewavailability-box, .overlay-livechat-box, .overlay-leasingnow-box, .overlay-socialicons-box {
  left: 220px;
  position: absolute;
  top: 25px;
}
.overlay-neighborhood-box a, .overlay-floorplan-box a, .overlay-gallery-box a, .overlay-viewavailability-box a, .overlay-livechat-box a, .overlay-leasingnow-box a, .overlay-socialicons-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left top;
  height: 61px;
  overflow: hidden;
  text-indent: -99999px;
  width: 74px;
  display: block;
}
.overlay-gallery-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -79px;
  width:74px;
  height:62px;
}
.overlay-neighborhood-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -163px;
  width:58px;
  height:61px;
}
.overlay-viewavailability-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -230px;
  width:191px;
  height:74px;
}
.overlay-livechat-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -388px;
  width:61px;
  height:63px;
}
.overlay-leasingnow-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -331px;
  width:88px;
  height:49px;
} 
.overlay-socialicons-box a {
  background:url(http://www.somaresidences.com/Setup/overlay_sprites.aspx) no-repeat left -477px;
  width:20px;
  height:35px;
} 
.overlay-gallery-box {
  left: 319px;
}
.overlay-neighborhood-box {
  left: 509px;
}
.overlay-viewavailability-box {
  left: 791px;
  top: 13px;
  z-index:9;
}
.overlay-livechat-box {
  left: 941px;
  top: 69px;
}
.overlay-leasingnow-box {
  left: 768px;
  top: 87px;
}
.overlay-socialicons-box {
  left: 990px;
  top: 0px;
}
.overlay-floorplan-content, .overlay-gallery-content, .overlay-neighborhood-content, .overlay-viewavailability-content, .overlay-livechat-content, .overlay-leasingnow-content, .overlay-socialicons-content {
  display: none;
  font-size: 16px;
  width:185px;
  padding:25px 15px 15px 15px;
  margin:5px 0 0 0;
  -moz-border-radius: 7px;
  border-radius: 7px;
  color:#FFF;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat left top;
}
.overlay-gallery-content {
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat -500px top;
}
.overlay-neighborhood-content {
  width:225px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat -1000px top;
}
.overlay-livechat-content {
  width:225px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat -2000px top;
}
.overlay-leasingnow-content {
  width:300px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat -1500px top;
}
.overlay-socialicons-content {
  width:205px;
  background:url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/content-overlay-bg.png) no-repeat -2500px top;
}
.closeDiv{
  text-align: center;
  font-size:15px;
  bottom:3px;
  text-decoration:none;
  padding:15px 0!important;
  width:120px;
  margin:0 auto;
  display:block;
  text-transform: uppercase;
  font-weight:500;
  -moz-border-radius: 10px;
  border-radius: 10px;
  background-size:100% 100%;
  background:#701F1F url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/RPresourceFiles/misc/tab-bg.png) repeat-x scroll left bottom!important;
  color:#CCCCCC;
  transition: all 0.5s ease 0s;
}
.closeDiv:hover{
  background:#EA7F1D url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/RPresourceFiles/misc/tab-bg.png) repeat-x scroll left bottom!important;
}
.closeContainer{
  margin:20px auto;
  text-align:center;
}
#tooltip-container {
  height: 100%;
  left: 0;
  margin: 0 auto;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 99999;
  /*display:none;*/
}
.PageManagerPreviewInfo {
  display:none;
}
#tooltip-wrapper{
  bottom: 3%;
  position: fixed;
  right: 3%;
}
#tooltip-container #wrapper, #tooltip-wrapper {
  position: relative;
  z-index:999999;
}
.orange-pin {
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/oragne-icon.png) no-repeat left top;
  width:28px;
  height:60px;
  position:absolute;
  top:40px;
  left:248px;
  cursor:pointer; 
}

.orange-pin.pin_phototour {
  left: 346px;
}
.orange-pin.pin_location {
  left: 527px;
}
.pin_social_icon {
  left: inherit;
  right: 40px;
  top: 6px;
}
.pin_view_avail {
  left: inherit;
  right: 291px;
  top: 28px;
}
.pin_view_avail {
  left: inherit;
  right: 291px;
  top: 28px;
}
.pin_leasing {
  left: inherit;
  right: 291px;
  top: 101px;
}
.pin_livechat {
  left: inherit;
  right: 133px;
  top: 101px;
}
.pin_rmo_widget {
  left: -8px;
  top: 303px;
}
.pin_get_direction {
  left: inherit;
  right: 17px;
  top: 353px;
}
.pin_description {
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/tooltip-bg.png) no-repeat center top;
  border-radius: 10px;
  -moz-border-radius: 10px;
  color: #FFFFFF;
  left: -68px;
  padding: 25px 10px 0;
  position: absolute;
  top: 35px;
  width: 140px;
  display:none;
  overflow:hidden;
  -webkit-transition: all .3s ease;
  -moz-transition: all .3s ease;
  transition: all .3s ease;
  z-index:99;
}
.floorplan_description, .location_description, .phototour_description {
  top: 47px;
}
.view-link {
  margin: 10px 0 0 0;
}
.view-link a {
  font-size:18px;
  font-weight:600;
  text-decoration:none;
  line-height:1.8em;
  margin:0 -10px;
  display:block;
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/tooltip-view-button.png) repeat-x center top;
  height:35px;
  color:#FFF;
}
.view-link a:hover {
  background:#1db5d8;
}
#tooltipcontrol {
  position:absolute;
  z-index:9999999;
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/tooltip-button.png) no-repeat left top;
  width:137px;
  height:44px;
  overflow:hidden;
  text-indent:-99999999px;
  right:0;
  margin-top:-38px;
}
#tooltipcontrol.onoff {
  
  background: url(http://www.somaresidences.com/RPresourceFiles/Standard/Standard-Template/S0053-1676ColeAve/Images/tooltip-button.png) no-repeat left -44px;
}
.overlay-main-content {
  background: url(http://essex247.cms.dev.myleasestar.com/app_themes/global/rpwebparts/images/more_search_bg.png) repeat scroll left top;
  bottom: 0;
  height: 100%;
  left: 0;
  margin: 0;
  padding: 0;
  position: fixed;
  right: 0;
  top: 0;
  opacity: inherit !important;
  width: 100%;
  z-index: 999999999999;
}
.overlay-main-content a.close-button {
  background:#0281AC;
  color: #FCFCFC;
  position: absolute;
  right: -15px;
  top: -15px;
  padding:5px 10px;
  text-decoration:none;
  border-radius: 19px;
  font-size:14px;
  font-weight:bold;
  border:2px solid #FFF;
}
/*.home_overlay_Overlay {
position: absolute;
width: 355px;
background:#0281AC;
padding: 10px 10px 30px 10px;
top: -54px;
right: 20px;
opacity:0.97;
}*/
.overlay-container {
  font-family:Arial, Helvetica, sans-serif;
  background:#FFF;
  margin:100px auto 0 auto;
  max-width:540px;
  padding:80px;
  position:relative;
  font-size:20px;
  color:#a9a9a9;
  border-radius: 10px;
  -moz-border-radius: 10px;
  box-shadow: 0px 0px 5px #000;
}
.overlay-container h1 {
  font-family:Arial, Helvetica, sans-serif;
  font-size:59px;
  font-weight:bold;
  color:#ea7f1d;
}
/* sandeepa made this change */

#h1_residence_features{
  margin: 0 !important;
  
}

/* #Pages/Handicap-Logo# */
.handicap-logo a.icon_equal {
  background: url("http://propertywaredesigns.com/leasestar/Landing-page/cabotbay/images/icon-home.png") no-repeat;
}

.handicap-logo a.icon_handicap {
  background: url("http://propertywaredesigns.com/leasestar/Landing-page/cabotbay/images/handy-icon.png") no-repeat;
}

.handicap-logo a {
  opacity: 0.8;
}

.handicap-logo a {
  display: inline-block;
  height: 33px;
  margin: 0 3px 0 0;
  overflow: hidden;
  transition: all 0.3s ease-in-out 0s;
  width:35px;
  
}

/* #Pages/Sitemap# */
.siteMap ul{
  padding: 0 15px;
}
.siteMap ul li{
  list-style:disc;
}
.siteMap ul li a{
  text-decoration:none;
  color:#787878;
  line-height: 1.3;
}
.siteMap ul li a:hover{
  color:#701F1F;
}

#content,.content{padding:20px 0;}
#content{padding-bottom:70px}
.ac-small {height:100%!important;}

#page_floorplans h1 {margin:0!important;color:#701F1F!important;text-shadow:none!important;}



/* #Pages/Floorplans# */

/*.FloorPlansV2 {overflow:hidden;}*/

#contentarea.bot-40 {
  box-shadow: 0 0 !important; /* Override v2 Widget Styling */
}

#rp_n_3_container {
  margin: 0 auto;
  min-width: 100% !important; /* hack since maps are at only 1000px */
  width: 100% !important;
}

.read-more-fp {
  padding: 20px;
}


/* Gallery Mobile fix
----------*/
@media screen and (max-width: 767px) and (min-width: 481px) {

}

/* Minification failed (line 612, error number 1043): 'progid:' is an IE-only construct that generates invalid CSS */