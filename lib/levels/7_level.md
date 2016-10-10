-title-
  Level Seven

-instructions-
  We can use find_by to search our tables for one specific record. find_by
  will return the first record that matches the search results. But what if
  we want to return ALL of the records that match our query? In this case: <strong>.where</strong>
  is the best method to use. Use the where method to find all of the Suspects
  with the last name Meadow-Brook
-example-
  Location.where(secret_passage: true)

-correct_code-
  Suspect.where(last_name: "Meadow-Brook")
