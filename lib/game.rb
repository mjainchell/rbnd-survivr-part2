class Game

  attr_accessor :tribes

  def initialize(*tribes)
    @tribes = [*tribes]
  end

  def add_tribe(tribe_name)
    @tribes << tribe_name
  end

  def immunity_challenge
    @tribes.sample
  end

  def clear_tribes
    @tribes.clear
  end

  def merge(tribe_merge)
    @new_tribe = Tribe.new(:tribe => tribe_merge, :member => [])
    @new_tribe.members << Tribe.members
    return @new_tribe

  end


end