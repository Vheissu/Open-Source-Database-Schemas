
## Social Link Sharing Schema

A schema for a site like Reddit or Hacker News.

### Table: submissions

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who submitted this submission

**title**: (String), Title text for the submission

**link**: (String), Link associated with this submission

**description**: (Text), Description associated with this submission

**date_created**: (Unix Timestamp or DateTime), When was this submission added?

**date_updated**: (Unix Timestamp or DateTime), When was this submission updated

**upvotes**: (Integer), Number of upvotes

**downvotes**: (Integer), Number of downvotes

**flags**: (Integer), Number of times this submission has been flagged

### Table: users

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**username**: (String), Username of the user

**email**: (String), Email address of the user

**password**: (String), A hashed password of the user

**last_ip**: (String), Last known IP of the user for security reasons

**first_name**: (String), Optional first name field

**last_name**: (String), Optional last name field

**country**: (String), Optional country field

**bio**: (Text), Optional bio field where a user can enter a small description about themselves

**status**: (Tiny Integer), 0 is not active, 1 is active, 2 is banned

**confirmed**: (Tiny Integer), Is the user confirmed via email or whatever? 0 is no and 1 is yes.

**date_created**: (Unix Timestamp or DateTime), When was this submission added?

**date_updated**: (Unix Timestamp or DateTime), When was this submission updated

### Table: votes

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**submission_id**: (Integer), ID of the submission the vote was cast on

**user_id**: (Integer), ID of the user who voted

**vote_direction**: (String), Valid values are: "up" and "down"

**date_created**: (Unix Timestamp or DateTime), When was this vote added?

### Table: comments

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who owns this comment

**submission_id**: (Integer), Which submission does this comment belong to?

**parent_id**: (Integer), parent comment ID this comment belongs to. 0 means no parent.

**comment**: (Text), The comment text

**upvotes**: (Integer), Number of upvotes

**downvotes**: (Integer), Number of downvotes

**flags**: (Integer), Number of times this comment has been flagged

**date_created**: (Unix Timestamp or DateTime), When was this comment added?

**date_updated**: (Unix Timestamp or DateTime), When was this comment updated

### Table: comment_votes

We already have a votes table, so why another? Submissions and comments are two different things. You could bloat the votes table heavily if you store them all in the same table. This means the _comment_votes_ table can be split out easier.

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**comment_id**: (Integer), ID of the comment the vote was cast on

**user_id**: (Integer), ID of the user who voted

**vote_direction**: (String), Valid values are: "up" and "down"

**date_created**: (Unix Timestamp or DateTime), When was this vote added?
