/**
* @File Name : OpportunityController.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : January 8, 2025
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | January 8, 2025 |   | Initial Version
**/

public class OpportunityController {
	@AuraEnabled
	public static List<Opportunity> showOpps(){
		
		try{
			List<Opportunity> opplist = [Select Name, StageName, CloseDate from Opportunity ORDER BY Name];
			return opplist;
		}
		catch(System.Exception ex){
			throw new AuraHandledException(ex.getMessage());
		}
	}
}