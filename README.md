Open Source Database Schemas
============================

Sometimes architecting the database of your app for some can be the most difficult part. You want a schema that won't need to be rewritten a million times, a solid starting foundation for your web application that takes into account the kind of information you want to be storing.

## What databases are supported?

Don't be confused, the goal of this repository isn't to provide export files of database schemas you can import directly into MySQL or Postgres (or insert X database). These are high-level schemas you will have to convert over to your chosen schema. This is to ensure all kinds of databases are supported.

## How can I contribute a schema?

Fork this repository, add in your chosen schema and stick to the existing structure of the repository. Rather than provide an example schema, base your schema off of an existing one. 

Remember your schema is a guide only, so don't create it from a perspective of a particular database. If a field is a numeric field you would say Integer, as an integer is a pretty standard and commonly shared field type for most popular databases.

### Naming Conventions

Index based naming is not an option, so ideally every schema you create should be prefixed with your Github username. For example, all schemas created by me (Vheissu) would start with vheissu-

Continuing the example, if I am creating a social network notifications schema, my file might look like this: vheissu-social-network-notifications.md

Please note all files should be in Markdown format, so your schema should end in .md.
