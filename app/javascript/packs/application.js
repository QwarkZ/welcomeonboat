// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import { initFlatpickr } from "../plugins/flatpickr"


Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initFlatpickr();
  const boardButtons = document.querySelectorAll("#dashboard button.tab");
  const boardContainers = document.querySelectorAll(".dashboard-container");
  boardButtons.forEach((button) => {
    button.addEventListener('click', (event) => {
      boardButtons.forEach(tabButton => tabButton.classList.remove("active"));
      button.classList.add("active");
      boardContainers.forEach(container => container.style.display = "none");
      const ref = button.id.split("-")[2];
      const boardId = "dashboard-container-" + ref;
      const board = document.getElementById(boardId);
      board.style.display = "block";
    });
  });
});


// Ajout de datapickr



