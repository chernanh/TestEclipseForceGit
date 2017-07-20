({
    fireAppEvent : function(cmp, event, helper) {
        var convoId = event.target.getAttribute("data-id");
        console.log(event);
        console.log(convoId);
    },
    checkResize : function(cmp, event, helper){
        console.log("evt: " + event);
    },
    DivMethod : function (component, event, helper){
        var divEl = component.find("div");
        var aEl = document.createElement("a");
        aEl.text = "Some Text";
        var clickEvent = function(){
            if (component.isValid()){
                alert("hello");
                //Do something with component object
            }
        };
        aEl.addEventListener("click", clickEvent, false);
        divEl.getElement().appendChild(aEl);
        
    }
})