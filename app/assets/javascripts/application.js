// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
//= require jquery3
//= require popper
//= require bootstrap


let scrollTop = '0px';

const recordScroll = () => {
  let evt = window.event;
  evt.preventDefault();
  console.log('rcording...')
  const el = document.querySelector('html')
  document.cookie = el.scrollTop;
}

const rememberScroll = () => {
  const el = document.querySelector('html')
  let scrollTop = document.cookie.split(' ').pop()
  document.cookie = document.cookie.split(' ').pop().toString();
  el.scrollTop = scrollTop;
  document.cookie = 0;
}

const animate = (elem, style, unit, from, to, time, prop) => {
  if (!elem) {
      return;
  }
  let start = new Date().getTime(),
      timer = setInterval(function () {
          let step = Math.min(1, (new Date().getTime() - start) / time);
          if (prop) {
              elem[style] = (from + step * (to - from))+unit;
          } else {
              elem.style[style] = (from + step * (to - from))+unit;
          }
          if (step === 1) {
              clearInterval(timer);
          }
      }, 25);
  if (prop) {
        elem[style] = from+unit;
  } else {
        elem.style[style] = from+unit;
  }
}

const animateScroll = (id) => {
  var target = id;
  animate(document.scrollingElement || document.documentElement, "scrollTop", "", 0, target.offsetTop, 1000, true);
}
