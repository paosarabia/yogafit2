document.addEventListener('DOMContentLoaded', function () {
    const prevButton = document.querySelector('.prev-button');
    const nextButton = document.querySelector('.next-button');
    const carouselItems = document.querySelectorAll('.carousel-item');
  
    let currentIndex = 0;
  
    function showCurrentSlide() {
      carouselItems.forEach((item, index) => {
        item.style.display = index === currentIndex ? 'block' : 'none';
      });
    }
  
    prevButton.addEventListener('click', function () {
      currentIndex = (currentIndex - 1 + carouselItems.length) % carouselItems.length;
      showCurrentSlide();
    });
  
    nextButton.addEventListener('click', function () {
      currentIndex = (currentIndex + 1) % carouselItems.length;
      showCurrentSlide();
    });
  });