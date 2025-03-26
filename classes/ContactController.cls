/**
* @File Name : ContactController.cls
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

public class ContactController {
	@AuraEnabled
	public static String loadContact(String fname, String lname, String cemail){

		try{
			Contact con= new Contact(FirstName=fname, LastName=lname, Email=cemail);
			insert con;
			return 'Contact created Successfully with Id' +con.Id;
		}
		catch(System.Exception ex)
		{
			throw new AuraHandledException(ex.getMessage());
		}
	}
}