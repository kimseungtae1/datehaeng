
<!-- javascript (script.js) -->

function mainSlider(proc) {
  if(slide_ready){ //앞의 애니메이션이 완료되었을때만
    
    slide_ready = false;
    var obj_cnt = $(".slide_pos").length;
    var cur_idx = 0, new_idx=0;
    $(".slide_pos").each(function(idx) {
     
     if($(this).attr('src') == "/images/main_rolling_loacation_over.png") {
      $(this).attr('src', "/images/main_rolling_loacation.png");
      cur_idx = idx;
     }
    });
    
    if(proc == "prev") {
     new_idx = cur_idx-1;
    }else{
     new_idx = cur_idx+1 -obj_cnt ;
    }
    $(".slide_pos").eq(new_idx).attr('src', "/images/main_rolling_loacation_over.png");
    
    
    /*
    //== Case1. 순차 애니메이션 ==//
    $(".slide_img").eq(cur_idx).fadeOut('slow', function () {
     $(".slide_img").eq(new_idx).fadeIn('slow', function() {
       slide_ready = true;
     });
    });
    */
    
    //== Case2. 동시 애니메이션==//
    $(".slide_img").eq(cur_idx).fadeOut('slow');
    $(".slide_img").eq(new_idx).fadeIn('slow', function() {
     slide_ready = true;
    });
    
   /*
    //== Case3. 슬라이드 애니메이션 ==//
    $(".slide_img").eq(cur_idx).slideToggle('slow', function () {
     $(".slide_img").eq(new_idx).slideToggle('slow');
    });
    */
    $("#slide_caption").text($(".slide_img").eq(new_idx).attr('alt'));
    
    /*
    //애니메이션 여부체크 : 상위의 애니메이션시 콜백함수로 처리가능하기에 사용하지 않는다.
    if($(".slide_img").eq(cur_idx).is(":animated") || $(".slide_img").eq(new_idx).is(":animated") ) {
      slide_ready = true;
    }
    */
  }else{
   return false;
  }
}