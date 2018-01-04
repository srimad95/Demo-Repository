({
    getString : function(component, event) {
        var action = component.get("c.getStringArray");
        action.setCallback(this, function(response) {
            var state = response.getState();
           
            if (state === "SUCCESS") {
                //console.log("-----67----");
                var stringItems = response.getReturnValue();
                component.set("v.sobjects", stringItems); 
            }
        });
        $A.enqueueAction(action);
    } 
})