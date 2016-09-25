#  not sure if this is the right place for it
# TODO: Move it?

# ===========
  # CREATE the default characters for the game
    # - first_name
    # - last_name
    # - prefix
    # - occupation
    # - age
    # - alive -> boolean
# ===========
# NOTES:
  # will need a function in here that will return an array of all the characters
module SuspectCreator
  def create_suspect_hash(first, last, pre, occupation, age, alive=true)
    {
      first_name: first,
      last_name: last,
      prefix: pre,
      occupation: occupation,
      age: age,
      alive: alive
    }
  end

  def all_suspects
    all_suspects = []
    all_suspects.push create_suspect_hash("Henry", "Black", "Dr.", "Doctor", 42, false)
    all_suspects.push create_suspect_hash("Lesley", "Scarlett", "Miss", "Actress", 27)
    all_suspects.push create_suspect_hash("Harold", "Mustard", "Colonel", "Colonel", 56)
    all_suspects.push create_suspect_hash("Louise", "White", "Mrs.", "Philanthropist", 39)
    all_suspects.push create_suspect_hash("Spencer", "Green", "Mr.", "Chemist", 28)
    all_suspects.push create_suspect_hash("Eileen", "Peacock", "Mrs.", "CEO", 47)
    all_suspects.push create_suspect_hash("George", "Plum", "Professor", "Professor", 36)
    all_suspects.push create_suspect_hash("George", "Plum", "Professor", "Professor", 36)
    all_suspects.push create_suspect_hash("Madeline", "Peach", "Ms.", "Lawyer", 28)
    all_suspects.push create_suspect_hash("Walter", "Grey", "Inspector", "Inspector", 40)
    all_suspects.push create_suspect_hash("Holly", "Meadow-Brook", "Mrs.", "Composer", 40)
    all_suspects.push create_suspect_hash("Richard", "Meadow-Brook", "Mr.", "Author", 40)
    all_suspects
  end
end
