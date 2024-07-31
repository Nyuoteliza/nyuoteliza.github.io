// Get all the slide elements
const slides = document.querySelectorAll('.slide');

// Get the previous and next buttons
const prevBtn = document.querySelector('.prev-btn');
const nextBtn = document.querySelector('.next-btn');

// Keep track of the current slide index
let currentSlide = 0;

// Function to display the current slide
function showSlide(n) {
  // Hide all slides
  slides.forEach(slide => slide.style.display = 'none');

  // Display the current slide
  slides[n].style.display = 'block';
}

// Function to move to the next slide
function nextSlide() {
  currentSlide++;
  if (currentSlide >= slides.length) {
    currentSlide = 0;
  }
  showSlide(currentSlide);
}

// Function to move to the previous slide
function prevSlide() {
  currentSlide--;
  if (currentSlide < 0) {
    currentSlide = slides.length - 1;
  }
  showSlide(currentSlide);
}

// Show the initial slide
showSlide(currentSlide);

// Add event listeners to the buttons
prevBtn.addEventListener('click', prevSlide);
nextBtn.addEventListener('click', nextSlide);

// Automatically slide to the next slide every 5 seconds
setInterval(nextSlide, 5000);