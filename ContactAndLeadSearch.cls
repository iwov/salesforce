public class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String searchTerm) {
        List<List<sObject>> searchList = [FIND :searchTerm IN NAME FIELDS RETURNING Contact(FirstName, LastName), Lead(Name)];
		Contact[] searchContacts = (Contact[])searchList[0];
        Lead[] searchLeads = (Lead[])searchList[1];

        System.debug('Found the following contacts.');
        for (Contact c : searchContacts) {
            System.debug(c.LastName + ', ' + c.FirstName);
        }

		System.debug('Found the following leads.');
		for (Lead l : searchLeads) {
		    System.debug(l.Name);
		}
        return searchList;
    }
}