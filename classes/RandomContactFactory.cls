public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer noOfContacts, String lastName){
        List<Contact> listOfContacts = new List<Contact>();
        for(Integer i = 0; i < noOfContacts; i++){
            Contact newContact = new Contact(LastName = lastName, FirstName = 'Test'+i);
            listOfContacts.add(newContact);
        }
        return listOfContacts;
    }
}