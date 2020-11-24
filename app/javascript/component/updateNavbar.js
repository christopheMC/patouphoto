const updateNavbarOnScroll = () => {
  const navbarPatou = document.querySelector('.navbar-patou');
  if (navbarPatou) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 0) {
        navbarPatou.classList.add('navbar-patou-stick');
      } else {
        navbarPatou.classList.remove('navbar-patou-stick');
      }
    });
  }
}

export { updateNavbarOnScroll };
