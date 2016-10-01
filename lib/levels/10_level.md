-title-
  Level Ten

-instructions-
  Awesome, we've definitely narrowed down the suspects. We need to find someone
  who was in the Lounge before ten o'clock. Use the _ table to find this.

-example-
  Users.find_by(name: "Martin")
  TODO: add example with time range.

-correct_code-
  Suspect.find_by(alive: false)
