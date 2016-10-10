-title-
  Level Three

-instructions-
  Getting all of the records in a table can be super handy. But active record
  is really great at getting specific information out of the database. To start
  really solving this murder mystery, we need to find out who exactly our victim is.
  On our Suspects table, there is a column called <strong>alive</strong>. Search the table to find
  the suspect where <strong>alive</strong> is set to false.

-example-
  Users.find_by(name: "Martin")

-correct_code-
  Suspect.find_by(alive: false)
