import "slick-carousel";
import "slick-carousel/slick/slick.css";
import "slick-carousel/slick/slick-theme.css";


const slick = () => {
  const carousel = document.querySelector(".single-item");
  if (!carousel) return;

  const cards = document.querySelectorAll(".card");
  cards.forEach((card) => {
    card.addEventListener("click", (event) => {
      const id = parseInt(event.currentTarget.dataset.imageId);
      $('.single-item').data("imageId", id);
      $('.single-item').slick('slickGoTo', id);
    })
  })
  $(document).on('click', (event) => {
    $('.single-item').slick();
  });

  $('#indexModal').on('shown.bs.modal', () => {
    const id = $('.single-item').data("imageId");
    $('.single-item').slick('slickGoTo', id, true);
    $('.single-item').slick('setPosition');
    $('.single-item').css({ opacity: 1 });
  });
  $('#showModal').on('shown.bs.modal', () => {
    const id = $('.single-item').data("imageId");
    $('.single-item').slick('slickGoTo', id, true);
    $('.single-item').slick('setPosition');
    $('.single-item').css({ opacity: 1 });
  });
}

export { slick };
