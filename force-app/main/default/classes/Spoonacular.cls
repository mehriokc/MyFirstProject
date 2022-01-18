public with sharing class Spoonacular {

    public static final String url = 'https://api.spoonacular.com';
    private static final String apiKey = 'b135993cf6a14479b94a306705c39acf';
    public static void GetRandomReciept() {

        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url +'/recipes/random?apiKey='+apiKey);
       
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if(response.getStatusCode() == 200) {
            system.debug('response: '+ response.getBody());
        }else{
            system.debug('response: '+ response.getStatusCode());
        }

    }

    public static void getRecipeInformation(String recepieId) {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url+'/recipes/'+recepieId+'/information?apiKey='+apikey);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        
        if(response.getStatusCode() == 200) {
            
            System.debug('response: '+ response.getBody());     
            
        }else{
            System.debug('response: '+ response.getStatusCode());
        }   
        }


        public static void searchRecipesbyIngredients(String ingredents) {
            Http http = new Http();
            HttpRequest request = new HttpRequest();
            request.setEndpoint(url+'/recipes/findByIngredients?apiKey='+apikey+'&ingredients='+ingredents);
            request.setMethod('GET');
            HttpResponse response = http.send(request);
            // If the request is successful, parse the JSON response.
            
            if(response.getStatusCode() == 200) {
                
                System.debug('response: '+ response.getBody());     
                
            }else{
                System.debug('response: '+ response.getStatusCode());
            }   
            }
        }
    