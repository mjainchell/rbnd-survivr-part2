require_relative "game"
require_relative "tribe"
require_relative "contestant"
require_relative "jury"
require "colorizr.rb"

#After your tests pass, uncomment this code below
#=========================================================
 # Create an array of twenty hopefuls to compete on the island of Borneo
 @contestants = %w(carlos walter aparna trinh diego juliana poornima juha sofia julia fernando dena orit colt zhalisa farrin muhammed ari rasha gauri)
 @contestants.map!{ |contestant| Contestant.new(contestant) }.shuffle!

 # Create two new tribes with names
 @coyopa = Tribe.new(name: "Pagong".red, members: @contestants.shift(10))
 @hunapu = Tribe.new(name: "Tagi".green, members: @contestants.shift(10))
#
 # Create a new game of Survivor
 @borneo = Game.new(@coyopa, @hunapu)
#=========================================================


#This is where you will write your code for the three phases
def phase_one
  puts 'Phase One'
  8.times {
    @borneo.immunity_challenge.tribal_council
  }
end

@jury = Jury.new

def phase_two
  puts 'Phase Two'
  3.times {
    selected = @borneo.individual_immunity_challenge
    @jury.add_member(selected)
  }
end

def phase_three
  puts 'Phase Three'
  7.times {
    eliminated = @borneo.individual_immunity_challenge
    @jury.add_member(eliminated)
  }
end


# If all the tests pass, the code below should run the entire simulation!!
#=========================================================
 phase_one #8 eliminations
 @merge_tribe = @borneo.merge("Cello".blue) # After 8 eliminations, merge the two tribes together
 phase_two #3 more eliminations
 @jury = Jury.new
 phase_three #7 elminiations become jury members
 finalists = @merge_tribe.members #set finalists
 vote_results = @jury.cast_votes(finalists) #Jury members report votes
 @jury.report_votes(vote_results) #Jury announces their votes
 @jury.announce_winner(vote_results) #Jury announces final winner
