public with sharing class RedditCommentWrapper {
    public RedditComment data;

    public class RedditComment {
        public String id;
        public String body;
        public String created_utc;
        public RedditAuthor author;
        public Integer score;
        public String permalink;
        public String link_id;
        public String parent_id;
        public RedditSubmission submission;
        public RedditSubreddit subreddit;
        public Boolean has_replies;
        public Boolean is_submitter;
        public String distinguished;
        public Boolean edited;
        public Boolean stickied;
    }

    public class RedditAuthor {
        public String id;
        public String name;
        public String created_utc;
        public String icon_img;
        public String comment_karma;
        public String link_karma;
    }

    public class RedditSubmission {
        public String id;
        public String name;
        public String title;
        public String created_utc;
        public String author_name;
        public Integer num_comments;
        public Integer score;
        public String url;
    }

    public class RedditSubreddit {
        public String id;
        public String name;
        public String display_name;
        public String public_description;
        public String created_utc;
        public String subscribers;
    }

}