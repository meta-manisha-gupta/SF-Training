public class ContactAndLeadSearch {
	public static List<List< SObject>> searchContactsAndLeads(String searchTerm){
        
        List<List<SObject>> listOfContactAndLeads = [FIND :searchTerm IN NAME FIELDS 
                               RETURNING Contact(LastName), Lead(LastName)];
        
        return listOfContactAndLeads;
    }
}