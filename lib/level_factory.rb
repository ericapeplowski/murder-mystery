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

  def all_levels(dir_name)
    all_levels = []
    Dir.foreach(dir_name) do |level|
      next if level != '1_level.md'
      hash = md_to_level_hash(dir_name + "/" + level)
      all_levels.push(hash)
    end
    all_levels
  end

  private
  def md_to_level_hash(file_name)
    contents = File.read(file_name)
    split = contents.strip.split("-").select { |l| l != ""}
    final_index = split.length - 1

    level_hash = {}
    i = 0
    while i <= final_index
      level_hash[split[i]] = split[i + 1]
      i += 2
    end

    return level_hash
  end

end
