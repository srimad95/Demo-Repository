({
    applycss:function(cmp,event){
     console.log("asad fg");
     var cmpTarget = cmp.find('Modalbox');
      var cmpBack = cmp.find('MB-Back');
      $A.util.addClass(cmpTarget, 'popupBackground');
      $A.util.addClass(cmpBack, 'custPopup');
    },
    removecss:function(cmp,event){
      console.log("valid");
      var cmpTarget = cmp.find('Modalbox');
      var cmpBack = cmp.find('MB-Back');
      $A.util.removeClass(cmpBack,'custPopup');
      $A.util.removeClass(cmpTarget, 'popupBackground');        
    }    
})