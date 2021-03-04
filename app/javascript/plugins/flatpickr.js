import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';

const initFlatpickr = () => {
  flatpickr(".datepicker", {
    "plugins": [new rangePlugin({ input: "#secondRangeInput" })]
  });
}

export { initFlatpickr };

