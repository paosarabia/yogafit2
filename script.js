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
  
  

