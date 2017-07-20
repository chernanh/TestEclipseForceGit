trigger CustomerBanAcknowledge on Testing_Event__e (after insert) {
    List<Testing_Event__e> tEventList = Trigger.new;
    Map<Id, Testing_Event__e> accIds = new Map<Id, Testing_Event__e>();
    List<Account> accList = new List<Account>();
    System.debug('tEventList' + tEventList.size());
    for (Testing_Event__e te: tEventList){
        if (te.vrk99__Parent_Event__c != null){
            accIds.put((Id) te.vrk99__Customer_ID__c, te);
        }
    }
    if (!accIds.isEmpty()){
        accList = [SELECT Id, Description from Account WHERE Id in :accIds.keySet() ];
        for (Account ac: accList){
            Testing_Event__e evt= accIds.get(ac.Id);
            ac.Description = (evt.vrk99__Ban_Customer__c?'Banned':'UnBanned');
        }
        update accList;
    }
}