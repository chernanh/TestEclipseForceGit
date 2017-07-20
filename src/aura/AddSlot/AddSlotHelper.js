({
    editRecord: function(component) {
        var editRecordEvent = $A.get("e.force:editRecord");
        editRecordEvent.setParams({
            "recordId": component.get("v.Event")
        });
        editRecordEvent.fire();
    },
    gotoRelated : function (component) {
        var relatedListEvent = $A.get("e.force:navigateToRelatedList");
        relatedListEvent.setParams({
            "relatedListId": "NotesAndAttachments",
            "parentRecordId": component.get("v.event")
        });
        relatedListEvent.fire();
	}
})