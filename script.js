document.addEventListener('DOMContentLoaded', function() {
  const audioPlayer = document.getElementById('audio-player');
  const playlistLinks = document.querySelectorAll('#playlist a');
  const songImage = document.getElementById('song-image');

  playlistLinks.forEach(link => {
    link.addEventListener('click', function(event) {
      event.preventDefault();

      const songSrc = this.getAttribute('href');
      const songTitle = this.textContent;
      const imageSrc = this.getAttribute('img');

      audioPlayer.src = songSrc;
      songImage.src = imageSrc;
      document.getElementById('song-title').textContent = songTitle;

      audioPlayer.play();
    });
  });
});

document.addEventListener('DOMContentLoaded', function() {
    const audioPlayer = document.getElementById('audio-player');
    const songTitle = document.getElementById('song-title');
  
    songTitle.addEventListener('click', function() {
      const songSrc = this.getAttribute('data-song-src');
      const imageSrc = this.getAttribute('data-song-image');
  
      audioPlayer.src = songSrc;
      document.getElementById('song-image').src = imageSrc;
  
      // Reproduce el audio después de un breve retraso
      setTimeout(function() {
        audioPlayer.play();
      }, 100); // Puedes ajustar el retraso según sea necesario
    });
  });

  document.addEventListener('DOMContentLoaded', function() {
    const timerDisplay = document.getElementById('time');
    const startButton = document.getElementById('start');
    const pauseButton = document.getElementById('pause');
    const breatheButton = document.getElementById('breathe');
    const cancelButton = document.getElementById('cancel');
  
    let timer; // Variable para guardar el setInterval del cronómetro
    let seconds = 0;
  
    function startTimer() {
      timer = setInterval(function() {
        seconds++;
        timerDisplay.textContent = formatTime(seconds);
      }, 1000);
    }
  
    function pauseTimer() {
      clearInterval(timer);
    }
  
    function resetTimer() {
      clearInterval(timer);
      seconds = 0;
      timerDisplay.textContent = formatTime(seconds);
    }
  
    function formatTime(seconds) {
      const minutes = Math.floor(seconds / 60);
      const remainingSeconds = seconds % 60;
      return `${minutes < 10 ? '0' : ''}${minutes}:${remainingSeconds < 10 ? '0' : ''}${remainingSeconds}`;
    }
  
    startButton.addEventListener('click', startTimer);
    pauseButton.addEventListener('click', pauseTimer);
    breatheButton.addEventListener('click', startTimer); // Simplemente reinicia el cronómetro al hacer clic en "Respira"
    cancelButton.addEventListener('click', resetTimer);
  });
  
  /* Carousel */

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


  
  

