module LocationFactory
  #  not sure if this is the right place for it
  # TODO: Move it?
    def location(name, secret_passage=false)
      {  name: name,  secret_passage: secret_passage }
    end

    def all_locations
      locations = ["Library", "Hall", "Ballroom", "Dining Room", "Billiard Room"]
      locations = locations.map { |l| location(l) }
      secret_passage_locations = ["Conservatory", "Lounge", "Kitchen", "Study"]
      secret_passage_locations.map! { |l| location(l, true) }
      locations.concat(secret_passage_locations)
    end
end
