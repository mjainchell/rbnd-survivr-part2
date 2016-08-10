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

  def member_merge
    new_tribe_members = []
    @tribes.each {|tribe| new_tribe_members << tribe.members}
    new_tribe_members.flatten!

  end

  def merge(tribe_merge)
    @new_tribe = Tribe.new({name: tribe_merge, members: member_merge })
    @tribes.clear
    add_tribe(@new_tribe)
    return @new_tribe
  end

  def individual_immunity_challenge
    member_merge.sample
  end



end