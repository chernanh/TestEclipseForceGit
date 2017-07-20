({
	doEdit: function(component, event, helper) {
		helper.editRecord(component);
	},
     doInit: function(component, event, helper) {
        helper.getAccounts(component);
    },
    gotoRelatedList : function (component, event, helper) {
        helper.gotoRelated(component);
	}
})