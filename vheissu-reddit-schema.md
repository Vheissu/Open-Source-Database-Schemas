## Reddit Database Schema

### Table: Users

**user_id**: (Integer), Primary ID that auto increments

**username**: (String), Unique username of the user

**email**: (String), Email of the user

**password_hash**: (String), Hashed password for security

**date_joined**: (Datetime), When the user joined Reddit

**karma_points**: (Integer), Total karma points of the user

### Table: Subreddits

**subreddit_id**: (Integer), Primary ID that auto increments

**name**: (String), Name of the subreddit

**description**: (String), Description of the subreddit

**date_created**: (Datetime), When the subreddit was created

**creator_id**: (Integer), ID of the user who created the subreddit

### Table: Posts

**post_id**: (Integer), Primary ID that auto increments

**title**: (String), Title of the post

**content**: (Text), Content of the post

**user_id**: (Integer), ID of the user who posted

**subreddit_id**: (Integer), ID of the subreddit where it was posted

**date_posted**: (Datetime), When the post was made

### Table: Comments

**comment_id**: (Integer), Primary ID that auto increments

**content**: (Text), Content of the comment

**user_id**: (Integer), ID of the user who commented

**post_id**: (Integer), ID of the post where it was commented

**date_commented**: (Datetime), When the comment was made

### Table: Messages

**message_id**: (Integer), Primary ID that auto increments

**sender_id**: (Integer), ID of the user who sent the message

**receiver_id**: (Integer), ID of the user who received the message

**content**: (Text), Content of the message

**date_sent**: (Datetime), When the message was sent

**read**: (Boolean), Whether the message has been read by the receiver or not

### Table: Post_Upvotes

**upvote_id**: (Integer), Primary ID that auto increments

**user_id**: (Integer), ID of the user who upvoted

**post_id**: (Integer), ID of the post that was upvoted

**date_upvoted**: (Datetime), When the upvote was made

### Table: Post_Downvotes

**downvote_id**: (Integer), Primary ID that auto increments

**user_id**: (Integer), ID of the user who downvoted

**post_id**: (Integer), ID of the post that was downvoted

**date_downvoted**: (Datetime), When the downvote was made

### Table: Comment_Upvotes

**upvote_id**: (Integer), Primary ID that auto increments

**user_id**: (Integer), ID of the user who upvoted

**comment_id**: (Integer), ID of the comment that was upvoted

**date_upvoted**: (Datetime), When the upvote was made

### Table: Comment_Downvotes

**downvote_id**: (Integer), Primary ID that auto increments

**user_id**: (Integer), ID of the user who downvoted

**comment_id**: (Integer), ID of the comment that was downvoted

**date_downvoted**: (Datetime), When the downvote was made
