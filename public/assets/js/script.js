const modalTriggers = document.querySelectorAll('.modal-trigger');
const closeModalButtons = document.querySelectorAll('.close');

/**Exibição da Modal */

modalTriggers.forEach(trigger => {
    trigger.addEventListener('click', () => {
        const cardId = trigger.dataset.modal;
        const modal = document.getElementById(`myModal${cardId}`);
        const modalImage = document.getElementById(`modalImage${cardId}`);

        modal.style.display = 'block';
        modalImage.src = trigger.src;
    });
});

/** Fechar o Modal Butao x */
closeModalButtons.forEach(button => {
    button.addEventListener('click', () => {
        const cardId = button.dataset.modal;
        const modal = document.getElementById(`myModal${cardId}`);

        modal.style.display = 'none';
    });
});

/**Menu Responsivo */
const menuToggle = document.getElementById('menu-toggle');
const links = document.getElementById('links');

menuToggle.addEventListener('click', () => {
    links.classList.toggle('show');
});