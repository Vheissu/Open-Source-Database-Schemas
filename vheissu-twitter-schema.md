## Twitter Database Schema

### Table: Users

**user_id**: (Integer), Primary Key, Auto Increment

**username**: (String), Unique username

**email**: (String), User's email

**password**: (String), Hashed password

**bio**: (String), User's short bio

**profile_picture**: (String), URL of the user's profile picture

**joined_date**: (Datetime), When the user joined Twitter

**location**: (String), User's location

**is_verified**: (Boolean), If the user is verified or not

**private_account**: (Boolean), If the account is private or not


### Table: Tweets

**tweet_id**: (Integer), Primary Key, Auto Increment

**user_id**: (Integer), Foreign Key referencing Users(user_id)

**tweet_text**: (String), The content of the tweet

**datetime_added**: (Datetime), When the tweet was posted

**reply_to_tweet_id**: (Integer), ID of the tweet this is replying to, nullable


### Table: Tweet_Likes

**user_id**: (Integer), Foreign Key referencing Users(user_id)

**tweet_id**: (Integer), Foreign Key referencing Tweets(tweet_id)

**datetime_added**: (Datetime), When the like was added


### Table: Tweet_Retweets

**user_id**: (Integer), Foreign Key referencing Users(user_id)

**tweet_id**: (Integer), Foreign Key referencing Tweets(tweet_id)

**datetime_added**: (Datetime), When the retweet was done


### Table: Followers

**user_id**: (Integer), Foreign Key referencing Users(user_id), user being followed

**follower_user_id**: (Integer), Foreign Key referencing Users(user_id), user who is following

**datetime_added**: (Datetime), When the follow started


### Table: DirectMessages

**message_id**: (Integer), Primary Key, Auto Increment

**sender_id**: (Integer), Foreign Key referencing Users(user_id)

**receiver_id**: (Integer), Foreign Key referencing Users(user_id)

**message_text**: (String), The content of the message

**datetime_sent**: (Datetime), When the message was sent


### Table: Tweet_Media

**media_id**: (Integer), Primary Key, Auto Increment

**tweet_id**: (Integer), Foreign Key referencing Tweets(tweet_id)

**media_url**: (String), URL of the media content

**media_type**: (String), Type of the media (image, video, etc.)
