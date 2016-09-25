module LevelFactory
  # create levels for the game
  # 1. List all suspects
  # 2. List all weapons
  # 3. List all rooms
  # 4. Find the suspect that's dead
  # 5. Find the rooms that are secret passages


  # Levels need to have:
    # t.string   "title"
    # t.string   "instructions"
    # t.string   "example"
    # t.string   "correct_code"

  # TODO: possibly move in Markdown files and parse to make the levels easier
  # to edit?

  def all_levels
    @level_one = {
      title: "Level One",
      instructions: "Use ActiveRecord to find all of the suspects.
                     (Hint, active record lets you get all of the records in a table
                     by calling #all on that model name.)",
      example: "If you had a table of cats and wanted to see all of the records
                you could type Cat.all",
      correct_code: "Suspect.all"
    }

    @level_two = {
      title: "Level Two",
      instructions: "Great! To further our investigation we also need to see all of
                    the locations in the mansion. Query the table to get a list of
                    the locations.",
      example: "Song.all would give you all the songs in a songs table.",
      correct_code: "Location.all"
    }

    [@level_one, @level_two]
  end
end
