/**
* @File Name : ObjectController.cls
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

public class ObjectController {
	@AuraEnabled(cacheable=true)
	public static List<SObject> showObjRecords(String objname){
		try{
			String qry = 'Select Name from ' +objname;
			List<SObject> objlist = Database.query(qry);
			return objlist;
		}
		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}
}