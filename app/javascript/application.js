// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"




// app/javascripts/modal.js

// JavaScript for modal functionality
// app/assets/javascripts/modal.js
document.addEventListener('DOMContentLoaded', () => {
    const openModalButton = document.querySelector('#openModalButton');
    const modal = document.querySelector('#cardModal');
    const closeModalButton = document.querySelector('#closeModal');


    const openColumnModalButton = document.querySelector('#openColumnModalButton');
    const columnModal = document.querySelector('#columnModal');
    const closeColumnModalButton = document.querySelector('#closeColumnModal');



  
    openModalButton.addEventListener('click', (event) => {
      event.preventDefault(); // Linkin varsayılan işlevini engelle
      modal.classList.remove('hidden');
    });
  
    closeModalButton.addEventListener('click', () => {
      modal.classList.add('hidden');
    });
  
    window.addEventListener('click', (event) => {
      if (event.target === modal) {
        modal.classList.add('hidden');
      }
    });



    openColumnModalButton.addEventListener('click', (event) => {
      event.preventDefault(); // Linkin varsayılan işlevini engelle
      columnModal.classList.remove('hidden');
  });

  closeColumnModalButton.addEventListener('click', () => {
      columnModal.classList.add('hidden');
  });

  window.addEventListener('click', (event) => {
      if (event.target === columnModal) {
          columnModal.classList.add('hidden');
      }
  });




  });
  
  
  
import "trix"
import "@rails/actiontext"
