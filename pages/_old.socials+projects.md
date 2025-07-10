---
layout: default
title: Socials+Projects
---

<!-- DEPRECATED -->

#### Socials+Projects
A place showcasing my online works.

##### Socials
Where to find me in the internet!


<style>
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
  max-width: 612px; /* From your provided code */
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
#thing::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  background-position-y:50px !important;
  height: 100%;
  z-index: 1;
  backdrop-filter: blur(3px);
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
    max-width: 512px; /* Keeping this at 512px for mobile consistency */
  }
}
</style>

<div class="box row" id="socials-grid"> <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/youtube.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">YouTube</h2>
      <p class="mdl-card__subtitle-text">@Lexibyte</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      My YouTube Channel....do I even need to explain this?
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://youtube.com/@Lexibyte">
        Visit Profile
      </a>
    </div>
  </div>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/mastodon.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">Mastodon</h2>
      <p class="mdl-card__subtitle-text">@lexibyte@wetdry.world</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      Some temporary string here....
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://lexibyte.wetdry.world">
        Visit Profile
      </a>
    </div>
  </div>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/bluesky.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">Bluesky</h2>
      <p class="mdl-card__subtitle-text">@lexibyte.bsky.social</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      Some temporary string here....
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://bsky.app/profile/lexibyte.bsky.social">
        Visit Profile
      </a>
    </div>
  </div>
  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/github.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">GitHub</h2>
      <p class="mdl-card__subtitle-text">thelexibyte</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      This is where I host the code for my open source projects!
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte">
        Visit Profile
      </a>
    </div>
  </div>

<div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/reddit.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">Reddit</h2>
      <p class="mdl-card__subtitle-text">u/TheLexibyte</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      me when login wall
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://reddit.com/user/TheLexibyte">
        Visit Profile
      </a>
    </div>
  </div>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/gd.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">Geometry Dash</h2>
      <p class="mdl-card__subtitle-text">TheLexibyte</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      fire in the hole
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://gdbrowser.com/u/TheLexibyte">
        Visit Profile
      </a>
    </div>
  </div>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/winclassic.png');">
      <div>
      <h2 class="mdl-card__title-text" style="text-align:left!important;">WinClassic</h2>
      <p class="mdl-card__subtitle-text">horibyte (Lex)</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
      I only use this for when I do random ass Windows mods lmao
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://winclassic.net/user/12724">
        Visit Profile
      </a>
    </div>
  </div>




</div> 


##### Projects
Notable works I've made in the past.

<div class="box row" id="projects-grid">
  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/arctic.png');" id="thing"> 
        <div>
            <h2 class="mdl-card__title-text" style="text-align:left!important;">Lex Arctic</h2>
            <p class="mdl-card__subtitle-text">Operating System</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
        My own operating system! It's written in assembly and it's open source!
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte/arctic">
        View Source Code
      </a>
    </div>
  </div>

  <div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/lexwiki.png')"> 
        <div>
            <h2 class="mdl-card__title-text" style="text-align:left!important;">LexWiki</h2>
            <p class="mdl-card__subtitle-text">Online Encyclopedia</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
        The wiki for all things me!
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="/wiki">
        Visit
      </a>
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte/wiki">
        View Source Code
      </a>
    </div>
  </div>

<div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/lexsite.png')"> 
        <div>
            <h2 class="mdl-card__title-text" style="text-align:left!important;">LexSite</h2>
            <p class="mdl-card__subtitle-text">lex.is-a.dev</p>
      </div>
    </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
        My own personal website!
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
      <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte/thelexibyte.github.io">
        View Source Code
      </a>
    </div>
  </div>

<div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/horiwebsite.png')" id="thing"> 
        <div>
            <h2 class="mdl-card__title-text" style="text-align:left!important;">Horibyte Website</h2>
            <p class="mdl-card__subtitle-text">lex.is-a.dev/horiwebsite</p>
        </div>
        </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
        Horibyte Website 2.5.3567, intact in all of its glory!
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
        <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="/horiwebsite">
            Visit
        </a>
        <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte/horiwebsite">
            View Source Code
        </a>
    </div>
</div>

<div class="demo-card-wide mdl-card mdl-shadow--2dp">
    <div class="mdl-card__title" style="background-image:url('/img/cards/stxpwebsite.png')" id="thing"> 
        <div>
            <h2 class="mdl-card__title-text" style="text-align:left!important;">Stuffy(XP) Websites</h2>
            <p class="mdl-card__subtitle-text">lex.is-a.dev/stuffyxp-website</p>
        </div>
        </div>
    <div class="mdl-card__supporting-text" style="text-align: left !important;">
        Are we archiving all of my sites now~<br>StuffyXP Website and Stuffy Website, you get the point.
    </div>
    <div class="mdl-card__actions mdl-card--border" style="float: right !important; position:relative !important;">
        <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="/stuffyxp-website">
            Visit
        </a>
        <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect" style="float: right !important; position:relative !important;" href="https://github.com/thelexibyte/stuffyxp-website">
            View Source Code
        </a>
    </div>
</div>

  </div>