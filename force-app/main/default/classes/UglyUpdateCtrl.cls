// Note: This class contains a FLS vulnerability to demo Salesforce Code Analyzer
public without sharing class UglyUpdateCtrl {
    @AuraEnabled
    public void execute(Account account) {
        account.Description = 'My code should not perform DML without enforcing field level security';
        update account;
    }
}