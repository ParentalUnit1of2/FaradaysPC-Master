var swiper = new Swiper(".mySwiper", {
	zoom: true,
	effect: "coverflow",
	grabCursor: true,
	centeredSlides: true,
	slidesPerView: "auto",
	coverflowEffect: {
		rotate: 50,
		stretch: 0,
		depth: 100,
		modifier: 1,
		slideShadows: false,
	},

	navigation: {
		nextEl: ".swiper-button-next",
		prevEl: ".swiper-button-prev",
	},
	
	pagination: {
		el: ".swiper-pagination",
		dynamicBullets: true,
		clickable: true,
	},

	loop: true,
	keyboard: true,
	mousewheel: true,
});
