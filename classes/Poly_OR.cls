public class Poly_OR extends Polymorsphism_OV
{
	Public override Void Rohan(String LNm,String Ph)
    {
        Contact C=new Contact();
        C.LastName=LNm;
        C.Phone=Ph;
        Insert C;
        System.debug('Contact Created');
    }
}