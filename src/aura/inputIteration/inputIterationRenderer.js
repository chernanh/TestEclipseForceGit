({
    afterRender: function(cmp,helper){
        this.superAfterRender();
        
        var inputList = cmp.get("v.inputList");
        
        for (var idx in inputList){
            var searchId= inputList[idx];
            var el = cmp.find(searchId);
            console.log("el-" + searchId + ">> " + el);
        }
        

        var checkSize = function(e){
            console.log(e);
        }
        cmp.set("v.checkSize", checkSize);
        window.addEventListener("resize", checkSize, false);
    },
    unrender: function(cmp,helper){
        this.superUnrender();
        var checkSize = cmp.get("v.checkSize");
        window.removeEventListener("resize", checkSize, false);
    }
})