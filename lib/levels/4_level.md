-title-
  Level Four

-instructions-
  The inspector has just informed you that some of the rooms in this house are
  secret passages (gasp!). Use active record to find the rooms that are secret
  passages quickly! (Tip: The Location table has a column called
  <strong>secret_passage</strong>, which is a boolean)

-example-
  Users.find_by(name: "Martin")

-correct_code-
  Location.find_by(secret_passage: true)
