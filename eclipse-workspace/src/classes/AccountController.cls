public with sharing class AccountController {
  @AuraEnabled
   public static List<Account> findAll() {
             return [SELECT Id, Name,BillingCity,Type  FROM Account LIMIT 10];
   }
}