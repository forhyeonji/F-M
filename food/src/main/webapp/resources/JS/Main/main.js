/**
 * 
 */ 
/*global console*/

var gallary = document.getElementById('slider-screen'),
	next    = document.getElementById('next-slide'),
	prev    = document.getElementById('prev-slide'),
	slide   = document.querySelectorAll('.slider-img'),
	dataImg = document.querySelectorAll('.slider-img'),
	balls  = document.querySelectorAll('.bullets li'),
	slideTimer,
	currentSlide = 1,
	currentBall = 1;

slide[0].classList.add('active');
balls[0].classList.add('active');

next.onclick = toNext;
prev.onclick = toPrev;




// function to play the slider automatic when the page is open

	function palySliderAtuomatic () {
		'use strict';
		removeActive();
		if(currentSlide > slide.length){
			currentSlide = 1;
		}		
		slide.forEach(function(i,k,slide){
			if(slide[k].getAttribute('data-img') == currentSlide){
				slide[k].classList.add('active');
				balls[k].classList.add('active');
				if(currentSlide == 1){
					gallary.setAttribute('style',`transform: translateX(0px)`);
				} else {
					gallary.setAttribute('style',`transform: translateX(calc(-1200px * ${currentSlide - 1}))`);
				}			
			}
		});		
	}

slideTimer = setInterval(function(){
				currentSlide++;
				palySliderAtuomatic();
			},3000);

function toNext (){
	'use strict';
	clearInterval(slideTimer);
	if(currentSlide < slide.length){
		currentSlide += 1;
		currentBall  += 1;
		check();
	} else {
		currentSlide = 1;
		currentBall  = 1;
		check();
	}
	slideTimer = setInterval(function(){
				currentSlide++;
				palySliderAtuomatic();
			},3000);
}

// To get the previous slide
function toPrev (){
	'use strict';
	clearInterval(slideTimer);
	if(currentSlide == 1){
		currentSlide = slide.length;
		currentBall  = balls.length;
		check();
	} else {
		currentSlide -= 1;
		currentBall  -= 1;
		check();
	}
	slideTimer = setInterval(function(){
				currentSlide++;
				palySliderAtuomatic();
			},3000);
}

// click in any down ball bar

balls.forEach(function (item, key, balls){
		balls[key].onclick = function (){
			'use strict';
			clearInterval(slideTimer);
			removeActive();
			currentSlide = this.getAttribute('data-bull');
			currentBall  = this.getAttribute('data-bull');
			check();
			slideTimer = setInterval(function(){
				currentSlide++;
				palySliderAtuomatic();
			},3000);
		}
		
	});


//the main function to move the slider
function check (){
	'use strict';
	removeActive();
	slide.forEach(function(i,k,slide){
		if(slide[k].getAttribute('data-img') == currentSlide){
			slide[k].classList.add('active');
			balls[k].classList.add('active');
			if(currentSlide == 1){
				gallary.setAttribute('style',`transform: translateX(0px)`);
			} else {
				gallary.setAttribute('style',`transform: translateX(calc(-1200px * ${currentSlide - 1}))`);
			}			
		}
	});
}


function removeActive () {
	'use strict';
	for (var i = 0; i < slide.length; i++) {
		slide[i].classList.remove('active');
	}
	
	for(var b = 0; b < balls.length; b++) {
		balls[b].classList.remove('active');
	}
}
