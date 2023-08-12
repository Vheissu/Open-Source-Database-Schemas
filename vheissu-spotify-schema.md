## Spotify Database Schema

### Table: Users

A table that houses all the users' information

**user_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**username**: (String), Username of the user

**email**: (String), Email of the user

**password**: (String), Encrypted password of the user

**country**: (String), Country of the user

**premium_status**: (Boolean), If the user has premium status or not

### Table: Artists

A table that houses all the artists' information

**artist_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**name**: (String), Name of the artist

**bio**: (String), Biography of the artist

**genre**: (String), Genre of the artist

### Table: Albums

A table that houses all the albums' information

**album_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**title**: (String), Title of the album

**release_date**: (Date), Release date of the album

**artist_id**: (Integer), ID of the artist who released the album

### Table: Songs

A table that houses all the songs' information

**song_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**title**: (String), Title of the song

**duration**: (Integer), Duration of the song in seconds

**album_id**: (Integer), ID of the album the song is from

### Table: Song_Artists

A table that houses the relationships between songs and their artists

**song_artist_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**song_id**: (Integer), ID of the song

**artist_id**: (Integer), ID of the artist

### Table: Playlists

A table that houses all the playlists' information

**playlist_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**name**: (String), Name of the playlist

**user_id**: (Integer), ID of the user who created the playlist

### Table: Playlist_Songs

A table that houses the relationships between playlists and songs

**playlist_song_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**playlist_id**: (Integer), ID of the playlist

**song_id**: (Integer), ID of the song

### Table: User_Listening_History

A table that houses the listening history of users

**history_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user

**song_id**: (Integer), ID of the song

**datetime_listened**: (Datetime or Timestamp Integer), When did the user listen to this song?

### Table: User_Follows_Artist

A table that houses the relationships between users and artists they follow

**follow_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user

**artist_id**: (Integer), ID of the artist

**follow_date**: (Datetime or Timestamp Integer), When did the user start following this artist?
