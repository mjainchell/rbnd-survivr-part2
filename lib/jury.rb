class Jury

  attr_accessor :jury_members, :members
  def initialize
    @jury_members = []
    @members = {}

  end

  def members
    @jury_members
  end

  def add_member(member)
    @jury_members.push(member)
  end

  def cast_votes(finalists)

    votes = {}

    finalists.each do |finalist|
      votes[finalist] = 0

    end

    @members.each do |member|
        votes[finalist = votes.keys.sample] += 1
        puts "#{member} voted for: #{finalist}"

    end

    return votes

  end

  def report_votes(finalists)
    finalists.each do |contestant, score|
       puts "#{contestant.to_s} got #{score.to_s} votes"
    end
  end


  # {#<Contestant:0x007f850a948ae0 @name="orit">=>4, #<Contestant:0x007f850a948a90 @name="colt">=>3}

  # REVIEW THIS CODE!!!!

  def announce_winner(vote_totals)
    the_winner = vote_totals.sort_by do |contestant, votes|

      votes[0]

    end.first

    puts "#{the_winner[0]}"

    return the_winner[0]
  end





end

