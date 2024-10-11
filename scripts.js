// Carrossel de jogos ao vivo
const leftBtn = document.querySelectorAll('.left-btn');
const rightBtn = document.querySelectorAll('.right-btn');
const carouselContent = document.querySelectorAll('.carousel-content');

leftBtn.forEach((button, index) => {
    button.addEventListener('click', () => {
        carouselContent[index].scrollBy({
            top: 0,
            left: -300, // Desliza para a esquerda
            behavior: 'smooth'
        });
    });
});

rightBtn.forEach((button, index) => {
    button.addEventListener('click', () => {
        carouselContent[index].scrollBy({
            top: 0,
            left: 300, // Desliza para a direita
            behavior: 'smooth'
        });
    });
});
