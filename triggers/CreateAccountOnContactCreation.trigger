trigger CreateAccountOnContactCreation on Contact (after insert) {
    // List to hold new Accounts
    List<Account> newAccounts = new List<Account>();

    // Map to track which Contact needs which Account
    Map<Id, Account> contactToAccountMap = new Map<Id, Account>();

    // Iterate through the inserted Contacts
    for (Contact con : Trigger.new) {
        // Check if the Contact does not have an Account assigned
        if (con.AccountId == null) {
            // Create a new Account
            Account newAcc = new Account(
                Name = (con.FirstName != null && con.LastName != null) ? con.FirstName + ' ' + con.LastName : 'Unnamed Account'
            );
            // Add to the list of Accounts to be inserted
            newAccounts.add(newAcc);
            // Temporarily associate the Contact with this Account
            contactToAccountMap.put(con.Id, newAcc);
        }
    }

    // Insert the new Accounts
    if (!newAccounts.isEmpty()) {
        insert newAccounts;

        // Update Contacts with the new Account IDs
        List<Contact> contactsToUpdate = new List<Contact>();
        for (Contact con : Trigger.new) {
            if (contactToAccountMap.containsKey(con.Id)) {
                Account relatedAccount = contactToAccountMap.get(con.Id);
                con.AccountId = relatedAccount.Id; // Associate the Contact with the newly created Account
                contactsToUpdate.add(new Contact(Id = con.Id, AccountId = relatedAccount.Id));
            }
        }

        // Perform update on the Contact records
        if (!contactsToUpdate.isEmpty()) {
            update contactsToUpdate;
        }
    }
}