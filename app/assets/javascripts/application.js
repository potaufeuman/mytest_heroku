//= require rails-ujs
//= require jquery
//= require bootstrap
//= require turbolinks
//= require_tree .

// スムーズスクロール部分の記述
$(function(){
  // #で始まるアンカーをクリックした場合に処理
  $('a[href^=#]').click(function() {
     // スクロールの速度
     var speed = 500; // ミリ秒
     // アンカーの値取得
     var href= $(this).attr("href");
     // 移動先を取得
     var target = $(href == "#" || href == "" ? 'html' : href);
     // 移動先を数値で取得
     var position = target.offset().top - 100;
     // スムーススクロール
     $('body,html').animate({scrollTop:position}, speed, 'swing');
     return false;
  });
});
// document.getElementById('scroll_top').addEventListener('click',function(){
//   $("html,body").animate({scrollTop:$('#top_page').offset().top});
// });
// document.getElementById('scroll_bottom').addEventListener('click',function(){
//   $("html,body").animate({scrollTop:$('#bottom_page').offset().top});
// });
