import flatpickr from "flatpickr";


const picker = () => {
  const datePicker = document.querySelector(".datepicker")
	if (datePicker) {
		flatpickr(".datepicker", {
			enableTime: false
		});
	};
};

export { picker };