public class ApexSharingCallReport{

    public static void shareCallReportSections(Map<Id, User> tcUsrMap){
        List<Id> insiderIds = new List<Id>();
        Set<Id> confidentialIds = new Set<Id>();
        List<TestCust2__Share> tc2ShareList = new List<TestCust2__Share>();
        Map<Id, TestCust2__c> tc2Map = new Map<Id, TestCust2__c>([SELECT Id, TestCustom__c FROM TestCust2__c WHERE TestCustom__c in :tcUsrMap.KeySet()]);

        for (TestCust2__c tc2 : tc2Map.values()){
            TestCust2__Share tc2Share = new TestCust2__Share();
            tc2Share.ParentId = tc2.Id;
            tc2Share.UserOrGroupId = tcUsrMap.get(tc2.TestCustom__c).Id;
            tc2Share.AccessLevel = 'Read';
            tc2Share.RowCause = Schema.TestCust2__Share.RowCause.Manual;
            tc2ShareList.add(tc2Share);
        }
        
        insert tc2ShareList;
        
    }
    
   
}