
## Medium.com Schema

A schema for a blogging platform like Medium.com.

### Table: posts

**post_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who authored this post

**image_path**: (String), Path to image on the server for the post

**title**: (String), Title of the post

**subtitle**: (String), Subtitle of the post

**text**: (Text), Ideally a longtext field for blog contents

**status**: (String), Values: published, draft, scheduled. Default value: draft

**views**: (Integer), Number of views (Indexed Field)

**date_created**: (Unix Timestamp or DateTime), When was this post created?

**date_updated**: (Unix Timestamp or DateTime), Last time this post was updated?

### Table: collections

**collection_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who started this collection

**image_path**: (String), Path to image on the server for the collection

**name**: (String), Name of the collection

**subtitle**: (String), Subtitle displayed on collection landing page

**slug**: (String), Lowercased hyphenated version of the name for URL's

**followers**: (Integer), Number of follows watching this collection

### Table: posts_collections

A table for holding posts assigned to a particular collection

**collection_id**: (Integer), ID of the collection this post belongs to (Indexed field)

**post_id**: (Integer), ID of the post (Indexed field)

### Table: users_users

**user_id**: (Integer), ID of the user (Indexed field)

**follow_user_id**: (Integer), ID of the user to follow (Indexed field)

### Table: bookmarks

**bookmark_id**: ((Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user (Indexed field)

**post_id**: (Integer), ID of the post (Indexed field)

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

### Table: analytics

A table for storing post analytics which can be used for trending data. Recommendations are used for trending data as well.

**post_id**: (Integer), ID of the post (Indexed field)

**date_created**: (Unix Timestamp or DateTime), When was this post viewed?

### Table: users_collections

A table for users following particular collections

**collection_id**: (Integer), ID of the collection (Indexed field)

**user_id**: (Integer), ID of the user (Indexed field)

### Table: recommendations

Whenever a user recommends an article.

**user_id**: (Integer), ID of the user (Indexed field)

**post_id**: (Integer), ID of the post (Indexed field)

**date_created**: (Unix Timestamp or DateTime), When was this post recommended?