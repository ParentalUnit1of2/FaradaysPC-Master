var swiper = new Swiper(".swiper", {
	zoom: true,
	
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

	effect: 'coverflow',
	coverflowEffect: {
		rotate: 70,
		slideShadows: false,
	},
});
