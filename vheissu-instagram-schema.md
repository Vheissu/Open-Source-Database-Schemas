
## Instagram Schema

A schema for a photo sharing application like Instagram.

### Table: photos

**photo_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who owns this photo (Indexed field)

**caption**: (String), Photo caption

**latitude**: (Float), Latitude value for location

**longitude**: (Float), Longitude value location

**image_path**: (String), Path to image on server

**image_size**: (Integer), Image size on server

**date_created**: (Unix Timestamp or DateTime), When was this image created?

**date_updated**: (Unix Timestamp or DateTime), Last time this image was updated?

### Table: comments

**comment_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**comment**: (Text), a simple text field containing the comment

### Table photos_comments

**photo_id**: (Integer), ID of the photo

**comment_id**: (Integer), ID of the comment being assigned to a photo

### Table: hashtags

**hashtag_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**hashtag**: (Text), a simple text field containing the hashtag

### Table photos_hashtags

**photo_id**: (Integer), ID of the photo

**hashtag_id**: (Integer), ID of the hashtag being assigned to a photo

### Table: likes

**user_id**: (Integer), ID of the user performing the like (Indexed field)

**photo_id**: (Integer), ID of the photo being liked (Indexed field)

**date_created**: (Unix Timestamp or DateTime), When was this image created?

**date_updated**: (Unix Timestamp or DateTime), Last time this image was updated?

### Table: tags

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**name**: (String), Tag name

### Table: photos_tags

**photo_id**: (Integer), ID of the photo being tagged

**tag_id**: (Integer), ID of the tag being assigned to a photo

### Table: users

**user_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**username**: (String), Username (Unique Index)

**email**: (String), Email address (Unique Index)

**salted_password**: (String), Salted password digest

**first_name**: (String), First name of user

**last_name**: (String), Last name of user

**last_ip**: (String), Last known user IP address

**date_created**: (Unix Timestamp or DateTime), When did this user sign up?

**date_updated**: (Unix Timestamp or DateTime), Last time this user was updated?
