
## Tumblr blog Schema

A schema for a blogging platform like Tumblr.

### Table: blogs

**blog_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**owner_id**: (Integer), ID of the user who owns this blog

**title**: (String), Name of the blog

**handle**: (String), The URL handle identifier of this blog. Unique indexed key.

**is_private** (Tiny Integer), Default value of 0 means blog is public. Value of 1 means this blog is password protected

**password** (String), Password field if this blog is marked as private

**date_created**: (Unix Timestamp or DateTime), When was this blog created?

**date_updated**: (Unix Timestamp or DateTime), Last time this blog was updated?

### Table: posts

**post_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**blog_id**: (Integer), ID of the blog this post belongs to

**user_id**: (Integer), ID of the user who authored this post

**text_title**: (String), Title of this blog post

**text_body**: (Text), Contents of this blog post

**quote_text**: (Text), The quote (if post type is quote)

**quote_source**: (Text), Source attribution for this quote 

**link_url**: (String), If post type equals link.

**link_title**: (Text), Title of the link

**link_caption**: (Text), Caption of the link

**chat_title**: (Text), Chat transcript title

**chat_body**: (Text), Text contents of the chat transcript

**audio_external_link**: (String), If post_type is audio, an external link to the audio

**audio_file_id**: (Integer), If a file is uploaded, the ID of it

**video_embed_code**: (Text), Embed code for a post with video

**post_status**: (String), Valid values; published, draft, scheduled, preview. Default value is: draft.

**post_type**: (String), Type of blog post. Valid values are; text, photo, quote, link, chat, audio and video. Default value is: text

**publish_date**: (Unix Timestamp or DateTime), When is this post to be published?

**date_created**: (Unix Timestamp or DateTime), When was this post created?

**date_updated**: (Unix Timestamp or DateTime), Last time this post was updated?

### Table: blog_user

**blog_id**: (Integer), ID of the blog

**user_id**: (Integer), ID of the user being assigned to a blog

**full_priveleges**: (Tiny Integer), Value of 1 means yes and value of 0 means no. Default value is 0

**contributor_priveleges**: (Tiny Integer), Value of 1 means yes and value of 0 means no. Default value is 1 — A contributor can write posts, but can't publish them.

**moderation_priveleges**: (Tiny Integer), Value of 1 means yes and value of 0 means no. Default value is 0

### Table: tags

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**name**: (String), Tag name

**slug**: (String), Tag slug (Unique Index)

### Table: post_tag

**post_id**: (Integer), ID of the post being tagged

**tag_id**: (Integer), ID of the tag being assigned to a post

### Table: images

**image_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who uploaded this image

**url**: (String), URL to the uploaded image (full size)

**small_size**: (String), Path to small size of uploaded image

**medium_size**: (String), Path to medium size of uploaded image

**caption**: (String), Image caption

**date_created**: (Unix Timestamp or DateTime), When was this image uploaded?

**date_updated**: (Unix Timestamp or DateTime), Last time this image was updated?

### Table: post_image

**post_id**: (Integer), ID of the post being assigned an image

**image_id**: (Integer), ID of the image being assigned to a post

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