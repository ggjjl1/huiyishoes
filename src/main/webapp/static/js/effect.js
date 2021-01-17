/*
file name:mbshop - 图片相册效果
created by:kris
created date:2014-10-09
*/

;(function ($) {
    //picSlider 轮显图片效果
    $.fn.picSlider = function (options) {
        var sliderStyleSet = options.sliderStyle;
        var advBoxName = $(this).find(options.picSliderThumb).find(options.sliderBox);
        var advBoxNum = advBoxName.length;
        var sliderUl = "<ul id='sliderUlId'></ul>";
        if (advBoxNum > 1) {
            var append_html = '';
            for (var i = 0; i < advBoxNum; i++) {
                if (options.IsSliderLiNum == 1) {
                    var sliderLi = "<li id=sl" + i + ">" + (i + 1) + "</li>";
                } else if (options.IsSliderLiNum == 0) {
                    var sliderLi = "<li id=sl" + i + "></li>";
                }
                append_html += sliderLi;
            }
            ;
            $(this).append(sliderUl).find('#sliderUlId').append(append_html);
            $(this).find('ul').find('li').eq(0).addClass(options.sliderLiHoverClass);
            //$('#sliderUlId').css('margin-left', '-'+$('#sliderUlId').width()/2+'px');
        }
        //是否开启自动切换
        if (options.IsAutoPlay == 1) {
            function sliderFunction() {
                var sliderLiIndex = $('#sl' + sliderIdNum);
                sliderLiIndex.trigger('mouseover');
                if (sliderIdNum == advBoxNum) {
                    sliderIdNum = 0;
                } else {
                    sliderIdNum++;
                }
            };
            autoPlay = setInterval(sliderFunction, options.autoPlaySec);
            var sliderIdNum = 0;

            $(this).hover(
                function () {
                    if (autoPlay) {
                        clearInterval(autoPlay);
                        autoPlay = null;
                    }
                },
                function () {
                    if (autoPlay) {
                        clearInterval(autoPlay);
                        autoPlay = null;
                    }
                    autoPlay = setInterval(sliderFunction, options.autoPlaySec);
                }
            );
        }
        switch (sliderStyleSet) {
            //直接切换显示，圆点标记
            case 1:
                advBoxName.first().css('display', 'block');
                $("#sliderUlId").find('li').mouseover(function (event) {
                    if (!advBoxName.eq($(this).index()).is(":animated")) {
                        advBoxName.eq($(this).index()).animate({'opacity': '1'}, "slow").show().siblings().stop().animate({'opacity': '0.3'}, "slow").hide();
                    }
                    ;
                    $(this).addClass(options.sliderLiHoverClass).siblings().removeClass(options.sliderLiHoverClass);
                    event.stopPropagation();
                });
                var sliderIdNum = 0;

            function sliderFunction() {
                var sliderLiIndex = $('#sl' + sliderIdNum);
                sliderLiIndex.trigger('mouseover');
                if (sliderIdNum == advBoxNum) {
                    sliderIdNum = 0;
                } else {
                    sliderIdNum++;
                }
            };
                break;
            //左右滑动
            case 2:
                if (options.IsPicFullScreen == 1) {
                    var advBoxWidth = document.body.clientWidth;
                    advBoxName.width(advBoxWidth);
                } else {
                    var advBoxWidth = advBoxName.width();
                }
                var picSliderThumb = $(this).find(options.picSliderThumb);
                picSliderThumb.width(advBoxWidth * advBoxNum);
                $("#sliderUlId").find('li').mouseover(function (event) {
                    picSliderThumb.stop().animate({"margin-left": "-" + advBoxWidth * ($(this).index())}, options.SliderdelaySec);
                    $(this).addClass(options.sliderLiHoverClass).siblings().removeClass(options.sliderLiHoverClass);
                    event.stopPropagation();
                });
                var sliderIdNum = 0;

            function sliderFunction() {
                var sliderLiIndex = $('#sl' + sliderIdNum);
                sliderLiIndex.trigger('mouseover');
                if (sliderIdNum == advBoxNum) {
                    sliderIdNum = 0;
                } else {
                    sliderIdNum++;
                }
            };
                break;
            default:
                $(this).append("请选择指定效果<br />1.直接切换显示，圆点标记");
        }
    };

})(jQuery);

	
 