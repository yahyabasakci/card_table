// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"




// app/javascripts/modal.js

// JavaScript for modal functionality
// app/assets/javascripts/modal.js
document.addEventListener('DOMContentLoaded', () => {

 // Column Dropdown
 const columnButton = document.getElementById('columnDropdownButton');
 const columnMenu = document.getElementById('columnDropdownMenu');

 if (columnButton && columnMenu) {
   columnButton.addEventListener('click', () => {
     columnMenu.classList.toggle('hidden');
   });

   document.addEventListener('click', (event) => {
     if (!columnButton.contains(event.target) && !columnMenu.contains(event.target)) {
       columnMenu.classList.add('hidden');
     }
   });
 }

 // Card Dropdown
 const cardButton = document.getElementById('cardDropdownButton');
 const cardMenu = document.getElementById('cardDropdownMenu');

 if (cardButton && cardMenu) {
   cardButton.addEventListener('click', () => {
     cardMenu.classList.toggle('hidden');
   });

   document.addEventListener('click', (event) => {
     if (!cardButton.contains(event.target) && !cardMenu.contains(event.target)) {
       cardMenu.classList.add('hidden');
     }
   });
 }







  document.querySelectorAll('[id^="dropdownButton-"]').forEach(button => {
    button.addEventListener('click', () => {
      const columnId = button.id.split('-')[1];
      const menu = document.getElementById(`dropdownMenu-${columnId}`);
      const isVisible = !menu.classList.contains('hidden');

      // Tüm dropdown menülerini gizle
      document.querySelectorAll('[id^="dropdownMenu-"]').forEach(menu => {
        menu.classList.add('hidden');
      });

      // Seçilen menüyü göster/gizle
      menu.classList.toggle('hidden', isVisible);
    });
  });

  // Menü dışına tıklanırsa menüyü gizle
  document.addEventListener('click', (event) => {
    if (!event.target.closest('[id^="dropdownButton-"]')) {
      document.querySelectorAll('[id^="dropdownMenu-"]').forEach(menu => {
        menu.classList.add('hidden');
      });
    }
  });








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
