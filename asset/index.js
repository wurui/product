define(['oxm/wurui/oxmjs-flip/1.4.0/asset/index'],function(Flip){
  return {
    init:function($mod){
        var inst=Flip.init($('.img-slider',$mod),{
            //wrap:mod.children('div'),
            classes:{
                flipPage: 'flip-page',
                flipWindow: 'flip-window',
                transition: 'transition'
            }
        });
        //inst.play();


    }
  }
})
