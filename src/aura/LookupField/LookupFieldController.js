({
    doInit: function(cmp) {
        var sObject = cmp.get("v.sObject");
        cmp.set("v.sObjectLower", sObject.toLowerCase());
        var action = cmp.get("c.getLookupList");
        action.setParams({ sObjectType : cmp.get("v.sObject") });
        action.setCallback(this, function(a){
            cmp.set("v.result", a.getReturnValue());
        });
        $A.enqueueAction(action);
    },
    handleFocus: function(cmp, event){
        var target;
        var lookupList = cmp.find("listbox");
        if (event.getSource) {
        // handling a framework component event
            target = event.getSource(); // this is a Component object
            $A.util.removeClass(lookupList, "slds-hide");
        } else {
         // handling a native browser event
            target = event.target.value; // this is a DOM element
            $A.util.removeClass(lookupList, "slds-hide");
        }
	},
    handleBlur: function(cmp, event){
        var target;
        var lookupList = cmp.find("listbox");
        if (event.getSource) {
        // handling a framework component event
            target = event.getSource(); // this is a Component object
            $A.util.addClass(lookupList, "slds-hide");
        } else {
         // handling a native browser event
            target = event.target.value; // this is a DOM element
            $A.util.addClass(lookupList, "slds-hide");
        }
	}
})