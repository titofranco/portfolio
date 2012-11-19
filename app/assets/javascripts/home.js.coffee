# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  #Thumbnailer.config.shaderOpacity = 1;
  tn1 = $('.mygallery').tn3
    skinDir:"skins",
    imageClick:"fullscreen",
    image:{
      maxZoom:1.5,
      crop:true,
      clickEvent:"dblclick",
      transitions:[
        {type:"blinds"},
        { type:"grid"},
        { type:"grid",
        duration:460,
        easing:"easeInQuad",
        gridX:1,
        gridY:8,
        # flat, diagonal, circle, random
        sort:"random",
        sortReverse:false,
        diagonalStart:"bl",
        # fade, scale
        method:"scale",
        partDuration:360,
        partEasing:"easeOutSine",
        partDirection:"left"}
      ]
    }