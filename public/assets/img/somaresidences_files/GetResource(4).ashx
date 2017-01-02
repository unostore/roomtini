/*
 * jQuery FlexSlider v2.2.0
 * http://www.woothemes.com/flexslider/
 *
 * Copyright 2012 WooThemes
 * Free to use under the GPLv2 license.
 * http://www.gnu.org/licenses/gpl-2.0.html
 *
 * Contributing author: Tyler Smith (@mbmufffin)
 */


/* Browser Resets
*********************************/
.flex-container a:active, .flexslider a:active, .flex-container a:focus, .flexslider a:focus
{
    outline: none;
}

.slides, .flex-control-nav, .flex-direction-nav
{
    margin: 0;
    padding: 0;
    list-style: none;
}

/* Icon Fonts
*********************************/
/* Font-face Icons */
@font-face
{
    font-family: 'flexslider-icon';
    /*src: url('http://www.somaresidences.com/App_Themes/Global/RPWebParts/fonts/flexslider-icon.eot');
    src: url('http://www.somaresidences.com/App_Themes/Global/RPWebParts/fonts/flexslider-icon.eot?#iefix') format('embedded-opentype'), url('http://www.somaresidences.com/App_Themes/Global/RPWebParts/fonts/flexslider-icon.woff') format('woff'), url('http://www.somaresidences.com/App_Themes/Global/RPWebParts/fonts/flexslider-icon.ttf') format('truetype'), url('http://www.somaresidences.com/App_Themes/Global/RPWebParts/fonts/flexslider-icon.svg#flexslider-icon') format('svg');*/
    font-weight: normal;
    font-style: normal;
}
/* FlexSlider Necessary Styles
*********************************/
.flexslider
{
    margin: 0;
    padding: 0;
    text-align: left;
}

    .flexslider .slides > li
    {
        display: none;
        -webkit-backface-visibility: hidden;
    }
    /* Hide the slides before the JS is loaded. Avoids image jumping */
    .flexslider .slides img
    {
        /*width: 100%;*/
        display: block;
    }

.flex-pauseplay span
{
    text-transform: capitalize;
}
/* Clearfix for the .slides element */
.slides:after
{
    content: "\0020";
    display: block;
    clear: both;
    visibility: hidden;
    line-height: 0;
    height: 0;
}

html[xmlns] .slides
{
    display: block;
}

* html .slides
{
    height: 1%;
}
    /* No JavaScript Fallback */
    /* If you are not using another script, such as Modernizr, make sure you
 * include js that eliminates this class on page load */
    .no-js .slides > li:first-child
    {
        display: block;
    }
/* FlexSlider Default Theme
*********************************/
.flexslider
{
    background: #fff;
    position: relative;
    zoom: 1;
}

.flex-viewport
{
    max-height: 2000px;
    -webkit-transition: all 1s ease;
    -moz-transition: all 1s ease;
    -o-transition: all 1s ease;
    transition: all 1s ease;
}

.loading .flex-viewport
{
    max-height: 300px;
}

.flexslider .slides
{
    zoom: 1;
}

.carousel li
{
    margin-right: 5px;
}
/* Direction Nav */
.flex-direction-nav
{
    *height: 0;
}

    .flex-direction-nav a
    {
        display: block;
        width: 24px;
        height: 24px;
        margin: -20px 0 0;
        position: absolute;
        top: 50%;
        z-index: 10;
        overflow: hidden;
        opacity: 0;
        cursor: pointer;
        font-size: 0px;
        text-indent: -9999999999;
        background: url(http://www.somaresidences.com/App_Themes/Global/images/sprite_corporate_search.png) no-repeat left -343px;
        -webkit-transition: all .3s ease;
        -moz-transition: all .3s ease;
        transition: all .3s ease;
    }

    .flex-direction-nav .flex-prev
    {
        left: 10px;
    }

    .flex-direction-nav .flex-next
    {
        right: 10px;
        text-align: right;
        background: url(http://www.somaresidences.com/App_Themes/Global/images/sprite_corporate_search.png) no-repeat -23px -343px;
    }

.flexslider:hover .flex-prev
{
    opacity: 0.7;
    left: 10px;
}

.flexslider:hover .flex-next
{
    opacity: 0.7;
    right: 10px;
}

    .flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover
    {
        opacity: 1;
    }

.flex-direction-nav .flex-disabled
{
    opacity: 0!important;
    filter: alpha(opacity=0);
    cursor: default;
}

.flex-direction-nav a:before
{
    font-size: 40px;
    display: inline-block;
}

.flex-direction-nav a.flex-next:before
{
}
/* Pause/Play */
.flex-pauseplay a
{
    display: block;
    width: 20px;
    height: 20px;
    position: absolute;
    bottom: 5px;
    left: 10px;
    opacity: 0.8;
    z-index: 10;
    overflow: hidden;
    cursor: pointer;
    color: #000;
}

    .flex-pauseplay a:before
    {
        font-family: "flexslider-icon";
        font-size: 20px;
        display: inline-block;
        content: '\f004';
    }

    .flex-pauseplay a:hover
    {
        opacity: 1;
    }

    .flex-pauseplay a.flex-play:before
    {
        content: '\f003';
    }
/* Control Nav */
.flex-control-nav
{
    width: 100%;
    position: absolute;
    bottom: -40px;
    text-align: center;
}

    .flex-control-nav li
    {
        margin: 0 6px;
        display: inline-block;
        zoom: 1;
        *display: inline;
    }

.flex-control-paging li a
{
    width: 11px;
    height: 11px;
    display: block;
    background: #666;
    background: rgba(0, 0, 0, 0.5);
    cursor: pointer;
    text-indent: -9999px;
    -webkit-border-radius: 20px;
    -moz-border-radius: 20px;
    -o-border-radius: 20px;
    border-radius: 20px;
    -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
    -moz-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
    -o-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
    box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
}

    .flex-control-paging li a:hover
    {
        background: #333;
        background: rgba(0, 0, 0, 0.7);
    }

    .flex-control-paging li a.flex-active
    {
        background: #000;
        background: rgba(0, 0, 0, 0.9);
        cursor: default;
    }

.flex-control-thumbs
{
    margin: 5px 0 0;
    position: static;
    overflow: hidden;
}

    .flex-control-thumbs li
    {
        width: 25%;
        float: left;
        margin: 0;
    }

    .flex-control-thumbs img
    {
        width: 100%;
        display: block;
        opacity: .7;
        cursor: pointer;
    }

        .flex-control-thumbs img:hover
        {
            opacity: 1;
        }

    .flex-control-thumbs .flex-active
    {
        opacity: 1;
        cursor: default;
    }

@media screen and (max-width: 860px)
{
    .flex-direction-nav .flex-prev
    {
        opacity: 1;
        left: 10px;
    }

    .flex-direction-nav .flex-next
    {
        opacity: 1;
        right: 10px;
    }
}


/* Minification failed (line 240, error number 1049): Browser hack generates invalid CSS */