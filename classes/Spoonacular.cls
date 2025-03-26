public class Spoonacular {
    private static final String SPOONACULAR_API = 'https://api.spoonacular.com';
    private static final String API_KEY = '1492c608c5f44b209c535b6e220dafdd';
  
    public static String getRandomRecipe()
    {
        Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(SPOONACULAR_API+'/recipes/random?apiKey='+API_KEY);
		request.setMethod('GET');

		HttpResponse response = http.send(request);

		// If the request is successful, parse the JSON response.
		
		if(response.getStatusCode() == 200) 
		{
			return response.getBody();	    
		}
        return '';
    }
    
    public static String getRecipe(String receipeId)
    {
        Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(SPOONACULAR_API+'/recipes/'+receipeId+'/information?apiKey='+API_KEY);
        
		request.setMethod('GET');

		HttpResponse response = http.send(request);

		// If the request is successful, parse the JSON response.
		
		if(response.getStatusCode() == 200) 
		{
			return response.getBody();		    
		}
        return '';
    }
    
    public static String getRecipeByIngredient(String ingredients)
    {
        Http http = new Http();
		HttpRequest request = new HttpRequest();
		request.setEndpoint(SPOONACULAR_API+'/recipes/findByIngredients?apiKey='+API_KEY+'&ingredients'+ingredients);
        
		request.setMethod('GET');

		HttpResponse response = http.send(request);

		// If the request is successful, parse the JSON response.
		
		if(response.getStatusCode() == 200) 
		{
			return response.getBody();		    
		}
        return '';
    }
}