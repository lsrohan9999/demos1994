/**
* @File Name : AccountController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : January 7, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | January 7, 2025 |   | Initial Version
**/

public class AccountController {
	@AuraEnabled(cacheable=true)
	public static List<Account> showAccRecords()
	{
		try{
			List<Account> acclist=[Select Name,Type,Rating from Account ORDER BY Name LIMIT 10];
			return acclist;
		}
		catch(System.Exception ex){
			throw new AuraHandledException(ex.getMessage());
		}
	}
}