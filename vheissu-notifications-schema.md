
Notifications Schema

A notifications schema like you might find in a social networking application like Facebook, Linkedin or any other social network that alerts you to an action or event taking place.

This schema assumes you have a users table already and will not be adding one into the final schema.

## Table: notifications

**notification_id**: (Integer), Unique ID that preferably auto increments (if supported in chosen DB)
**triggered_by**: (Integer), ID of user that triggered the notification
**notify**: (Integer), ID of user who should be notified
**notification**: (String), The textual notification field which could use template placeholders for dynamic values like: "{username} wants to be friends" which could be replaced to say: "Vheissu wants to be friends"
datetime_added: (Datetime or Timestamp Integer), When was this notification added
**datetime_read**: (Datetime or Timestamp Integer),
read: (Tiny Integer), a field housing either 1 or 0. 1 means the notification has been read, 0 means it has not. Default value is 0.
