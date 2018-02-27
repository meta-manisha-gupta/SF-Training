@isTest
public class TestVerifyDate {
    @isTest static void checkDatesTestTrue(){
        Date date1 = date.today();
        Date date2 = date1.addDays(29);
        Date actual = VerifyDate.CheckDates(date1, date2);
        System.debug(actual);
        System.assertEquals(actual, date2);
    }
    @isTest static void DateOver(){
        Date date1 = date.today();
        Date date2 = date1.addDays(31);
        Date actual = VerifyDate.CheckDates(date1, date2);
        System.debug(actual);
        System.assertNotEquals(actual, date1);
    }
}