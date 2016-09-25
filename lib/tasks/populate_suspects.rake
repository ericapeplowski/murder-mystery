require 'suspect_creator.rb'
include SuspectCreator


require 'location_factory.rb'
include LocationFactory

require 'weapon_factory.rb'
include WeaponFactory

require 'level_factory.rb'
include LevelFactory

namespace :populate do
  desc "Populate the database with default characters"
  task :create_game_data => :environment do
    all_suspects.each  { |s| Suspect.create(s)  }
    all_locations.each { |l| Location.create(l) }
    all_weapons.each   { |w| Weapon.create(w)   }
  end

  task :create_levels => :environment do
    all_levels.each    { |l| Level.create(l) }
  end
end
