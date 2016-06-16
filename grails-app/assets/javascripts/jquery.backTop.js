(function($) {

    $.fn.backTop = function(options) {
        
        
        
        var backBtn = this;
        
        var settings = $.extend({
            'position' : 50,
            'speed' : 500,
            'color' : 'grey'
        }, options);
        
        //Settings
        
        var position = settings['position'];
        var speed = settings['speed'];
        var color = settings['color'];
        
        if(color == 'white'){
            backBtn.addClass('white');
        } else if(color == 'red'){
            backBtn.addClass('red');
        }else if(color == 'green'){
            backBtn.addClass('green');
        }else if(color == 'red'){
            backBtn.addClass('black');
        }
        else {
            backBtn.addClass('grey');
        }
        
        backBtn.css({
            'right' : 40,
            'bottom' : 40,
            'position' : 'fixed'
        });
        
        $(document).scroll(function(){
            var pos = $(window).scrollTop();
            //console.log(pos);
            
            if(pos >= position){
                backBtn.fadeIn(speed);
            } else{
                backBtn.fadeOut(speed);
            }
        });
        
        backBtn.click(function(){
            $("html, body").animate({ 
                scrollTop:0 
            }, 
            {
                duration: 500
            }); 
        });

    }

}(jQuery));