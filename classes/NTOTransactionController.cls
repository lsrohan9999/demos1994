/**
* @File Name : NTOTransactionController.cls
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

public class NTOTransactionController {
	@AuraEnabled
	public static List<NTOTransaction__c> showTransactions(){
		
		try{
			List<NTOTransaction__c> tlist =[Select Name, Customer__c,Product__r.Name,Product__r.Price__c,Quantity__c
			from NTOTransaction__c order by Name];
			return tlist;
		}
		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}

	@AuraEnabled
	public static String deleteTransactions(String rid)
	{
		try
		{
			NTOTransaction__c tran = [Select Name from NTOTransaction__c where ID=:rid];
			String tranName = tran.Name;

			delete tran;
			return 'Transaction ' +tranName+ 'is successfully deleted';

		}

		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}

	@AuraEnabled
	public static String deleteMultiRows(List<String> idList)
	{
		try
		{
			List<NTOTransaction__c> rlist = [select Name from NTOTransaction__c where Id in :idList];
			Database.delete(rlist,false);
			return 'Records successfully deleted...';
		}
		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}
}