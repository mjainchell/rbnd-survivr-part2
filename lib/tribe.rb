class Tribe
  attr_accessor :name, :members

  def initialize(tribe_hash)
    @name = tribe_hash[:name.to_s]
    @members = tribe_hash[:members]
    @immune_array = []
    puts "The Tribe: #{tribe_hash[:name]} has been created!"
  end

  def tribal_council(immune_member)
    @immune = immune_member[:immune]
    @immune_array = [@members, @immune]
    @immune_array[0].pop if @immune_array[0].include?(@immune)
  end



end