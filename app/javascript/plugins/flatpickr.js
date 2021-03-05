import flatpickr from "flatpickr";
import rangePlugin from 'flatpickr/dist/plugins/rangePlugin';
import { French } from "flatpickr/dist/l10n/fr.js";


const initFlatpickr = () => {
  flatpickr(".datepicker", {
    "plugins": [new rangePlugin({ input: "#secondRangeInput" })],
    "locale": French,
    minDate: "today"
  });
}

export { initFlatpickr };
