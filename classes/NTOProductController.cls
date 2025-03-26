/**
* @File Name : NTOProductController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : January 9, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | January 9, 2025 |   | Initial Version
**/

public class NTOProductController {
	@AuraEnabled (cacheable=true)
	public static List<NTOProduct__c> showProducts(){
		
		try{
			List<NTOProduct__c> nlist=[Select Name, Description__c,Price__c from NTOProduct__c order by Name];
			return nlist;
		}
		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}
}