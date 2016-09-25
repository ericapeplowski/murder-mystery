module WeaponFactory
  def all_weapons
    weapons = ["dagger", "candlestick", "lead pipe", "revolver",
               "rope", "wrench", "dumbell", "trophy", "poison"]
    weapons.map! { |w| { name: w }}
  end
end
