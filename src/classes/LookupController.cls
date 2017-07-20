public with sharing class LookupController {
	@AuraEnabled
    public static List<sObject> getLookupList(String sObjectType){
        List<sObject> toRet = new List<sObject>();
        String q = 'SELECT Id, Name FROM ' + sObjectType + ' LIMIT 10';
        toRet.addAll(Database.query(q));
        return toRet;
    }
}