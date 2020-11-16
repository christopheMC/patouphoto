import "slick-carousel";

const slick = () => {
  $('.autoplay').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000,
  });
}

export { slick }
