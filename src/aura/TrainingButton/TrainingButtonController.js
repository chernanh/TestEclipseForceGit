({
    handleClick : function(cmp, event) {
        var attributeValue = cmp.get("v.text");
        console.log("current text: " + attributeValue);
		console.log(event.target);
        var target = event.getSource();
        cmp.set("v.text", target.get("v.label"));
    },
    handleClickHTML : function(cmp, event) {
        var attributeValue = cmp.get("v.text");
        console.log("current text: " + attributeValue);
		console.log(cmp);
        cmp.set("v.text", event.target.value);
    }
})