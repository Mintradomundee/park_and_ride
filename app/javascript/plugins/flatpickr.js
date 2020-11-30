import flatpickr from "flatpickr";

flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    altInput: true,
    time_24hr: true,
    disableMobile: true
});
