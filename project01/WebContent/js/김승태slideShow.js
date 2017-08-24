// JavaScript Document
$(function(){
	var movedIndex;
	
	function moveSlide(index){
		movedIndex = index;
		
		var moveLeft = -(index*1900);
		$('#slidePanel').animate({'left':moveLeft}, 'slow');
	}
	
	var randomNumber = Math.floor(Math.random()*3);
	moveSlide(randomNumber);
	
	$('#prevButton').on('click', function(){
		if(movedIndex != 0)
			movedIndex = movedIndex-1;
			moveSlide(movedIndex);
	});
	
	$('#nextButton').on('click', function(){
		if(movedIndex != 2)
			movedIndex = movedIndex+1;
			moveSlide(movedIndex);
	});
	
	setInterval(function(){
		if(movedIndex != 2)
			movedIndex = movedIndex+1;
		else
			movedIndex=0;
			
		moveSlide(movedIndex);
	},5000);
});