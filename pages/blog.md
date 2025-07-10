---
layout: default
permalink: blog
title: Blog
---

<!-- HTML Wizardy -->

<!-- Styles for the MDL Card, Auto-break if two box in one column, etc... -->
<!-- Colapse in editor if too clunky -->

<style>
/* Prone to breaking, only modify if explicitly needed  -lex */
/* Overall Blog Grid Layout */
.row {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;
  gap: 15px;
}

/* Base Card Styles */
.mdl-card {
  background-color: rgba(255,255,255,0.62) !important;
  backdrop-filter: blur(23px);
  margin-bottom: 20px;
}

/* Individual Card Sizing within Grid */
.demo-card-wide {
  width: auto; /* Resets fixed width, managed by flex-basis below */
  flex: 0 0 calc(50% - 10px);
  max-width: 612px;
}

/* Card Header/Title Area */
.mdl-card__title {
  height: 176px;
  color: #fff;
  background-size: cover;
  background-position: center;
  display: flex;
  flex-direction: column;
  justify-content: flex-end;
  align-items: flex-start;
  padding: 16px;
  position: relative;
  overflow: hidden;
}

/* Image Darkening Overlay */
.mdl-card__title::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.6);
  backdrop-filter:blur(3px);
  z-index: 1;
}

/* Inner Text Container Positioning within Title Area */
.mdl-card__title > div {
    width: 100%;
    position: relative;
    z-index: 2;
}

/* Card Text Elements (Shared Styles for Title and Subtitle) */
.mdl-card__title-text,
.mdl-card__subtitle-text {
  text-shadow:
    0 4px 4px rgba(0,0,0,0.4),
    0 1px 5px rgba(0,0,0,0.3);
  position: relative;
  z-index: 2;
}

/* Subtitle (Date) Specific Text Styling */
.mdl-card__subtitle-text {
  -webkit-align-self:flex-end;
  -ms-flex-item-align:end;
  align-self:flex-end;
  word-break: break-all;
  overflow-wrap: break-word;
  color:inherit;
  display:block;
  display:-webkit-flex;
  display:-ms-flexbox;
  display:flex;
  font-size:16px;
  font-weight:300;
  line-height:normal;
  overflow:hidden;
  -webkit-transform-origin:149px 48px;
  transform-origin:149px 48px;
  margin:0;
}

/* Main Title Text (H2) Specific Styling */
.demo-card-wide .mdl-card__title-text {
  margin-bottom: 0px;
}

/* Card Menu Styling */
.demo-card-wide > .mdl-card__menu {
  color: #fff;
}

/* Responsive Adjustments */
@media (max-width: 1100px) {
  .demo-card-wide {
    flex: 0 0 100%;
    max-width: 512px;
  }
}
#a {
text-shadow:
    0 2px 2px rgba(0,0,0,0.4),
    0 1px 4px rgba(0,0,0,0.3);
}
</style>
<div id="a">
<h4>Blog</h4>
<p>A place for Lex to talk about random stuff!</p>
</div>

<!-- MDL Card -->
<div class="box row" id="some">
{% for post in site.posts %} <!-- get all posts in the _posts directory -->
  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image: url('{{ post.image }}');"> <!-- set the banner image to the post's thumb.png -->
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">{{ post.title }}</h2> <!-- set the post title as the title text -->
      <p class="mdl-card__subtitle-text">{{ post.date | date_to_string }}</p> <!-- same thing but for the date, convert to DD MMM YYYY -->
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      {{ post.desc }} <!-- set the post's description to supporting text -->
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="{{ post.url }}"> <!-- set the mdl button link to the post's url -->
        Read
      </a>
    </div>
  </div>
{% endfor %} <!-- self explanatory-->
</div>