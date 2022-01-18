public inherited sharing class AnimalsHttpMockCallout implements HttpCalloutMock{
    public HttpResponse respond(HttpRequest request){
        //Create a fake response
        HttpResponse response = new HttpResponse();
        response.setHeader('Content-Type','application/json');
        response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear"]}');
        response.setStatusCode(200);
        return response;
    }
}