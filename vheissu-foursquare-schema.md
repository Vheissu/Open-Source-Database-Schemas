
## Foursquare Database Schema

### Table: Places

A table that houses all of the places a user can check into

**place_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**name**: (String), Name of the place

**address**: (String), Address of the place

**city**: (String), City of the place

**zip**: (String), Not all zip/postal codes are numeric

**tags**: (String), Preferably a JSON encoded string of tags

**latitude**: (Decimal 9,6), The latitude of the place

**longitude**: (Decimal 9,6), The longitude of the place

### Table: Checkins

**checkin_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who checked in

**place_id**: (Integer), ID of the place the user is checking into

**datetime_added**: (Datetime or Timestamp Integer), When did this checkin take place?


### Table: Tips

A table housing all tips left for a particular place by a user

**tip_id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer), ID of the user who left this tip

**datetime_added**: (Datetime or Timestamp Integer), When was this tip added?

**tip**: (String), Text description of the tip
