public class AccountUpdater 
{
    // Logger for debugging
    private static final System.LoggingLevel LOG_LEVEL = System.LoggingLevel.DEBUG;

    // Method to update accounts with a specific industry
    public static void updateAccountsByIndustry(String industry, String newFieldValue) {
        // Null checks
        if (industry == null || newFieldValue == null) {
            System.debug(LOG_LEVEL, 'Industry or newFieldValue is null');
            return;
        }

        try {
            // Query to retrieve accounts with the specified industry
            List<Account> accountsToUpdate = [
                SELECT Id, Industry, Custom_Field__c 
                FROM Account 
                WHERE Industry = :industry
            ];

            // Check if accounts are retrieved
            if (accountsToUpdate.isEmpty()) {
                System.debug(LOG_LEVEL, 'No accounts found with the specified industry');
                return;
            }

            // Update the field on retrieved accounts
            for (Account acc : accountsToUpdate) {
                acc.Custom_Field__c = newFieldValue;
            }

            // Perform DML operation outside of the loop
            update accountsToUpdate;

            // Log success message
            System.debug(LOG_LEVEL, accountsToUpdate.size() + ' accounts updated successfully');

        } catch (DmlException dmlEx) {
            // Log DML exceptions
            System.debug(LOG_LEVEL, 'DML Exception: ' + dmlEx.getMessage());
        } catch (Exception ex) {
            // Log general exceptions
            System.debug(LOG_LEVEL, 'Exception: ' + ex.getMessage());
        }
    }
}