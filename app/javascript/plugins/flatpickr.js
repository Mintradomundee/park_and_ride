import flatpickr from "flatpickr";

flatpickr(".datepicker", {
    enableTime: true,
    dateFormat: "d-m-Y H:i",
    altInput: true,
    time_24hr: true,
    disableMobile: true
});
