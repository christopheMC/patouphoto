import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";


const slick = () => {
  $(document).on('click', () => {
    $('.single-item').slick();
  });
}

export { slick }
