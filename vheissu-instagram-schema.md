## Instagram Database Schema

### Table: Users

**user_id**: (Integer), Primary ID

**username**: (String), Username of the user

**email**: (String), Email address of the user

**password**: (String), Hashed password for the user

**bio**: (String), Short bio of the user

**profile_picture**: (String), URL to the profile picture

### Table: Posts

**post_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who made the post

**datetime_added**: (Datetime or Timestamp Integer), When was this post added?

**image_url**: (String), URL to the image

**caption**: (String), Caption for the post

### Table: Comments

**comment_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who made this comment

**post_id**: (Integer), ID of the post the comment was made on

**datetime_added**: (Datetime or Timestamp Integer), When was this comment added?

**comment**: (String), Text of the comment

### Table: Likes

**like_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who liked the post

**post_id**: (Integer), ID of the post that was liked

**datetime_added**: (Datetime or Timestamp Integer), When was this like added?

### Table: Followers

**follower_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who is following

**following_user_id**: (Integer), ID of the user being followed

**datetime_added**: (Datetime or Timestamp Integer), When did this follow relationship start?

### Table: DirectMessages

**dm_id**: (Integer), Primary ID

**sender_id**: (Integer), ID of the user who sent the message

**receiver_id**: (Integer), ID of the user who received the message

**message**: (String), The actual message

**datetime_sent**: (Datetime or Timestamp Integer), When was the message sent?

### Table: Stories

**story_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who posted the story

**datetime_added**: (Datetime or Timestamp Integer), When was the story added?

**image_url**: (String), URL to the image in the story

**caption**: (String), Caption for the story

### Table: SavedPosts

**savedpost_id**: (Integer), Primary ID

**user_id**: (Integer), ID of the user who saved the post

**post_id**: (Integer), ID of the post that was saved

**datetime_added**: (Datetime or Timestamp Integer), When was the post saved?

### Table: Hashtags

**hashtag_id**: (Integer), Primary ID

**hashtag**: (String), The actual hashtag text, unique

### Table: HashtagMappings

**hashtagmap_id**: (Integer), Primary ID

**hashtag_id**: (Integer), ID of the hashtag

**post_id**: (Integer), ID of the post where the hashtag is used

**datetime_added**: (Datetime or Timestamp Integer), When was the hashtag added to the post?
