public with sharing class CandidateController {

    @AuraEnabled
    public static ContactPagedResult findAll(Decimal pageNumber) {
        Integer pageSize = 16;
        Integer offset = ((Integer)pageNumber - 1) * pageSize;
        
        ContactPagedResult r =  new ContactPagedResult();
        r.pageSize = pageSize;
        r.page = (Integer) pageNumber;
        r.total = [SELECT count() FROM contact 
                      ];
        r.contacts = [SELECT Id, FirstName, LastName, MobilePhone, MailingCity, MailingState, Picture_URL__c FROM contact 
                      
                      LIMIT :pageSize OFFSET :offset];
        return r;
    }

}