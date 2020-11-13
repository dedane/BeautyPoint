$(document).on('click', '.dropdown-menu', function (e) {
  e.stopPropagation();
});
$('.slider-one')
.not(".slick-initialized")
.slick({
  dots: true,
  infinite: true,
  speed: 500,
  fade: true,
  cssEase: 'linear',
  autoplay: true,
  autoplaySpeed: 3000,
  prevArrow: ".site-slider .slider-btn .prev",
  nextArrow: ".site-slider .slider-btn .next",
});

$('.slider-two')
.not(".slick-initialized")
.slick({
  autoplaySpeed: 3000,
  prevArrow: ".site-slider-two .prev",
  nextArrow: ".site-slider-two .next",
  slidesToShow: 5,
  slidesToScroll: 1,
});


//isotope filter
var $grid =$('.grid').isotope({
  itemSelector: '.grid-item',
  layoutMode: 'fitRows'
});

$(".button-group").on("click","button",function(){
  var filterValue = $(this).attr('data-filter');
  $grid.isotope({filter: filterValue})
})