require 'suspect_creator.rb'
include SuspectCreator

require 'location_factory.rb'
include LocationFactory

require 'weapon_factory.rb'
include WeaponFactory

require 'level_factory.rb'
include LevelFactory

namespace :db do
  desc "Populate the database with default characters"
  task :create_game_data => :environment do
    all_suspects.each  { |s| Suspect.create(s)  }
    all_locations.each { |l| Location.create(l) }
    all_weapons.each   { |w| Weapon.create(w)   }
    dir_name = File.join(Rails.root, "lib", "levels")
    all_levels(dir_name).each  { |l| Level.create(l) }
  end
end
