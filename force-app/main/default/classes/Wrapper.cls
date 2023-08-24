public class Wrapper {
    public static String getJoke() {
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://official-joke-api.appspot.com/random_joke'); 
        request.setMethod('GET');
        Http http = new Http();
        HttpResponse response = http.send(request);

        GetJoke getValue = (GetJoke) JSON.deserialize(response.getBody(),Wrapper.GetJoke.class);
        retrun getValue.setup;

    }

    public class GetJoke{
        public String setup{get;set;}
        public String punchline{get;set;}
    }
}