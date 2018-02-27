@isTest
public class TestRestrictContactByName {
    @isTest static void testRestrictContactByNameOnInvalidName(){
        Contact newContact = new Contact(LastName = 'INVALIDNAME', FirstName = 'xyz');
        String expected = 'The Last Name "INVALIDNAME" is not allowed for DML';
        Test.startTest();
        try{
            insert newContact;
        }
        catch(DmlException ex){
            String actual = ex.getDmlMessage(0);
            System.assertEquals(expected, actual);
            Test.stopTest();
        }
    }
}