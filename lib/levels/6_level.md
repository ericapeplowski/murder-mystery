-title-
  Level Six

-instructions-
  Hmm... so if the secret passage in the lounge leads to the kitchen. It's likely
  our murderer escaped that way. Let's see which Suspects were in the kitchen
  when the police showed up.

-example-
  Users.find_by(name: "Martin")

-correct_code-
  Suspect.find_by(alive: false)
