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

  const bookingAvatars = document.querySelectorAll(".avatar");
  bookingAvatars.forEach((avatar) => {
    avatar.addEventListener('mouseenter', () => {
      console.log(avatar.nextElementSibling);
      avatar.nextElementSibling.style.display = "inline-block";
    });
    avatar.addEventListener('mouseleave', () => {
      avatar.nextElementSibling.style.display = "none";
    });
  });

  const dateInputChange = () => {
    const dateInput = document.getElementById("firstRangeInput");
    console.log(dateInput);
    dateInput.addEventListener("change", () => {
      const endDate = document.getElementById("secondRangeInput");
      const milliSecDuration = Date.parse(endDate.value, 10) - Date.parse(dateInput.value, 10);
      const daysDuration = milliSecDuration / 1000 / 60 / 60 / 24;
      const pricePerDay = document.getElementById("price-unit");
      const bookButton = document.getElementById("book-btn");
      const totalPrice = parseInt(pricePerDay.innerText) * daysDuration;
      bookButton.value = `Je réserve ce bateau pour ${totalPrice} €`;
      bookButton.innerText = `Je réserve ce bateau pour ${totalPrice} €`;
    });
  };

  dateInputChange();

});


// Ajout de datapickr



