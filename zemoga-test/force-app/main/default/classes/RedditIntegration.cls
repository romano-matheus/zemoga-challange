public with sharing class RedditIntegration {
    public static List<RedditCommentWrapper> getComments() {
        String endpoint = 'https://www.reddit.com/r/PrequelMemes/comments/e8a0c7.json';
        
        HttpRequest request = new HttpRequest();
        request.setEndpoint(endpoint);
        request.setMethod('GET');
        
        Http http = new Http();
        HTTPResponse response = http.send(request);
        
        List<RedditCommentWrapper> redditCommentWrapperList = (List<RedditCommentWrapper>) JSON.deserialize(response.getBody(), List<RedditCommentWrapper>.class);

        return redditCommentWrapperList;
    }
}
