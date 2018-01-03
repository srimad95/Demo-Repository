@isTest
public class TestVerifyDate {   
    
    @isTest
    static void testCheckDatesPositive(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2017-04-29'), Date.valueOf('2017-05-10'));
        system.assertEquals(dte,Date.valueOf('2017-05-10'));
    }
    
    @isTest
    static void testCheckDatesdate2GT30Daysdate1(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2017-04-29'), Date.valueOf('2017-06-30'));
        system.assertEquals(dte,Date.valueOf('2017-04-29'));
    }
    
    @isTest
    static void testCheckDatesdate2LTdate1(){
        Date dte = VerifyDate.CheckDates(Date.valueOf('2017-04-29'), Date.valueOf('2017-03-29'));
        system.assertEquals(dte,Date.valueOf('2017-04-29'));
    }
    
}