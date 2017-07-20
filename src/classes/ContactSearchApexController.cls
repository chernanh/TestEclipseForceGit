public class ContactSearchApexController {
//Use @AuraEnabled to enable client- and server-side access to the method
    @AuraEnabled
    public static String userInfo() {
        return UserInfo.getName();
    }
}