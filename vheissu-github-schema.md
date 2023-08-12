## GitHub Database Schema

### Table: Users

This table stores information about users.

**user_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**username**: (String), The unique username of the user

**email**: (String), The email of the user

**password**: (String), The hashed password of the user

**created_at**: (Datetime), When the user account was created

**updated_at**: (Datetime), When the user account was last updated

### Table: Repositories

This table stores information about repositories.

**repo_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who created the repository

**name**: (String), The name of the repository

**description**: (String), The description of the repository

**created_at**: (Datetime), When the repository was created

**updated_at**: (Datetime), When the repository was last updated

**is_private**: (Boolean), Whether the repository is private or not

### Table: Commits

This table stores information about commits.

**commit_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**repo_id**: (Integer), ID of the repository where the commit was made

**user_id**: (Integer), ID of the user who made the commit

**message**: (String), The commit message

**created_at**: (Datetime), When the commit was made

### Table: PullRequests

This table stores information about pull requests.

**pr_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**repo_id**: (Integer), ID of the repository where the pull request was made

**user_id**: (Integer), ID of the user who made the pull request

**title**: (String), The title of the pull request

**description**: (String), The description of the pull request

**created_at**: (Datetime), When the pull request was created

**updated_at**: (Datetime), When the pull request was last updated

**status**: (String), The status of the pull request (open, closed, merged)

### Table: Issues

This table stores information about issues.

**issue_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**repo_id**: (Integer), ID of the repository where the issue was created

**user_id**: (Integer), ID of the user who created the issue

**title**: (String), The title of the issue

**description**: (String), The description of the issue

**created_at**: (Datetime), When the issue was created

**updated_at**: (Datetime), When the issue was last updated

**status**: (String), The status of the issue (open, closed)

### Table: Comments

This table stores information about comments made on pull requests and issues.

**comment_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who made the comment

**content**: (String), The content of the comment

**created_at**: (Datetime), When the comment was made

**updated_at**: (Datetime), When the comment was last updated

### Table: PullRequestComments

This table links comments to pull requests.

**pr_id**: (Integer), ID of the pull request the comment was made on

**comment_id**: (Integer), ID of the comment

### Table: IssueComments

This table links comments to issues.

**issue_id**: (Integer), ID of the issue the comment was made on

**comment_id**: (Integer), ID of the comment

### Table: CommentEdits

This table stores information about edits made to comments.

**edit_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**comment_id**: (Integer), ID of the comment that was edited

**user_id**: (Integer), ID of the user who made the edit

**previous_content**: (String), The content of the comment before the edit

**new_content**: (String), The content of the comment after the edit

**created_at**: (Datetime), When the edit was made
