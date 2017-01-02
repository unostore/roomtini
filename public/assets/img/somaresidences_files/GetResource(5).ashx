.rmo2Testimonial #testimonialsUl{
  list-style: none;
  padding:0px;
  margin:10px 0px;
}
.rmo2Testimonial {
  position:absolute;
  margin-top:300px;
  width:300px;
  height:80px;
  color: white;
  right:0px;
  text-align: center;
  line-height: 25px;
}

.rmo2Testimonial .pnlRmo2Opacity {
  position:absolute;
  width:300px;
  height:80px;
  background-color: #701F1F;
  opacity:0.8;
  color: #CCCCCC;
  text-align: center;
  line-height: 25px;
}
.rmo2Next {
  position:absolute;
  margin-top:300px;
  margin-Left:300px;
  width:20px;
  height:80px;
  right:0px;
  background-color: #701F1F;
  opacity:0.9;
}  
.rmo2Next .rmo2Icon {
  margin-top: 32px;
}

.rmo2Testimonial .testimonialIcon 
{
  position: absolute;
  width: 100%;
  height: 24px;
  background-repeat: no-repeat;
  background-position: 50%;
  margin-top: 2px;
}

.rmo2Testimonial .pnlTestimonials 
{
  position: absolute;
  width: 90%;
  margin-left: 10px;
  margin-top: 25px;
}
.rmo2Testimonial .testimonial {line-height: 21px;
  font-size: 14px;
  list-style: none;
  height:45px;
  overflow:hidden;
}
.rmo2Testimonial .image-Facebook {
  background-image:url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Facebook.png');    
}

.rmo2Testimonial .image-Twitter {
  background-image:url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Twitter.png');
}

.rmo2Testimonial .image-LinkedIn {
  background-image:url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Linkedin.png');
}

.rmo2Testimonial .image-ResidentSurvey {
  background-image:url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-BullHorn.png');
}

.box-header
{
  text-align:center;
  font-weight:bold;
  border: 1px solid #DEDEDE;
  border-bottom:none;
  margin: 10px 10px -10px 10px;
  padding: 10px;
  height:5px;
}
#testimonialsUl
{
  cursor:pointer;
}
.testimonial-full-list
{
  border: 1px solid #DEDEDE;
  height: 100%;
  margin: 10px;
  overflow: auto;
  scrollbar-base-color:#ffeaff;
  padding: 10px;
}
.testimonial-lightbox
{
  display:none;
}	
.testimonial-content {
  float: right;
  width: 205px;
}
.lightbox-logo img
{
  padding:10px 0px;
}
.lightbox-logo
{
  width:100%;
  text-align:center;
}
#btnClose {
  color: black;
  float: right;
  padding: 5px;
  width:25px;
  background: url(http://www.somaresidences.com/RPresourceFiles/Themes/clouds/images/cross_button.png) no-repeat right top;
  height:27px;
  margin: -12px -9px 0 0;
}
.testimonial-items
{
  border-bottom: 1px solid #DEDEDE;
  border-right: 1px solid #DEDEDE;
  clear: both;
  line-height: 1.5;
  overflow: auto;
  padding: 20px;
  
}
.testimonial-full-list .image-Facebook {
  background-image: url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Facebook.png');
  background-color:#000000;
  background-repeat: no-repeat;
  float: left;
  height: 20px;
  width: 20px;
  margin: 2px 5px;
}
.testimonial-full-list .image-Twitter {
  background-image: url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Twitter.png');
  background-color:#000000;
  background-repeat: no-repeat;
  float: left;
  height: 20px;
  width: 20px;
  margin: 2px 5px;
}
.testimonial-full-list .image-LinkedIn {
  background-image: url('http://www.somaresidences.com/RPWebParts/Rmo/Images/Icons-Linkedin.png');
  background-color:#000000;
  background-repeat: no-repeat;
  float: left;
  height: 20px;
  width: 20px;
  margin: 2px 5px;
}
.testimonial-full-list {
  border: 1px solid #DEDEDE;
  height: 350px;
  margin: 10px;
  overflow: auto;
  padding: 10px;
}
.web_dialog_overlay
{
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  height: 100%;
  width: 100%;
  margin: 0;
  padding: 0;
  background: #000000;
  
  opacity: .8;
  filter: alpha(opacity=15);
  -moz-opacity: .15;
  z-index: 101;
  display: none;
}
.testimonial-lightbox {
  background-color: #FFFFFF;
  display: none;
  font-family: Verdana;
  font-size: 10pt;
  left: 50%;
  margin-left: -175px;
  margin-top: -100px;
  /*  height: 528px;*/
  padding: 0;
  position: fixed;
  top: 30%;
  width:100%;
  max-width: 350px;
  z-index: 102;
}
.web_dialog_title
{
  border-bottom: solid 2px #701F1F;
  background-color: #701F1F;
  padding: 4px;
  color: White;
  font-weight:bold;
}
.web_dialog_title a
{
  color: White;
  text-decoration: none;
}
.align_right
{
  text-align: right;
}
.dvAmtTitle{
  
  padding-bottom:10px;	
  color:#701F1F;
  font-size: 26px;
  font-weight:bold;	
  font-family:!IMPORTANT;
  
}
ul.section
{
  list-style: disc outside none;
}
.float-right
{
  float:none !important;
}
.amenImg
{
  display:none;
}
.leasestarlogo {
  float: right;
  padding: 5px 15px 0;
}

/* Mobile */
@media (max-width: 480px) {
  
  #callout {z-index:8001;}
  
  .testimonial-lightbox {height:470px;}
  
  .testimonial-full-list {
    height:366px;
    border:none;
  }
  
  .testimonial-lightbox .box-header {
    padding:10px 0px;
    border:none;
    border-bottom:1px solid #dedede;
  }
  
  #callout #wrapper .testimonial-lightbox {
    position: fixed!important;
    top: 0!important;
    left: 0;
    right: 0;
    bottom: 0;
    margin: 0!important;
    height: 100%;
    width: 100%;
    color:#eee;
    background:#000;
    padding-top:40px;
  }
  
  .testimonial-items {
    border-right:0;
    border-bottom-color:#333;
  }
  
  #btnClose {
    background:none!important;
    position:absolute;
    top:-30px;
    right:10px;
    font-size:10px;
    font-weight:normal;
  }
  #btnClose:before {
    content:"\00D7";
    color:#fff;
    font-size: 4em;
    line-height: .5em;
    font-weight:100;
  }
  
  .testimonial-content {width:86%;}
  
}

/* Minification failed (line 231, error number 1036): Expected expression, found '!important' */