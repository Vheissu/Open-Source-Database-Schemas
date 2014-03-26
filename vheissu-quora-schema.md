
Quora Database Schema

A loose schema for building a questions and answers platform like Quora.

### Table: users

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**username**: (String) username

**email**: (String) Email address

**password**: (String) Hashed password

**date_created**: (Integer or DateTime) Date account was created

**credits**: (Integer) User credits (make this an indexed field)

### Table: questions

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer) ID of the user who added this question

**title**: (String) Title of the question

**date_created**: (Integer or DateTime) Date question was created

**date_update**: (Integer or DateTime) Date question was modified

**is_anonymous**: (Tiny Integer) of 1 or 0. If value equals '1' question is added anonymously, if '0' it's not anonymous. By default 0 is the value if none specified

### Table: answers

**id**: (Integer), Primary ID that preferably auto increments (if supported in chosen DB)

**user_id**: (Integer) Who is answering this question?

**question_id**: (Integer) The ID of the question this answer belongs to

**answer_text**: (Text) The textual answer response

**is_anonymous**: (Tiny Integer) of 1 or 0. If value equals '1' question is added anonymously, if '0' it's not anonymous. By default 0 is the value if none specified
