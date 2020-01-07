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
  console.log('loaded', document.cookie)
  const el = document.querySelector('html')
  el.scrollTop = document.cookie;
}
