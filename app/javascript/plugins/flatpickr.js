import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {"plugins": [new rangePlugin({ input: "#secondRangeInput"})]
});
}

export { initFlatpickr };

