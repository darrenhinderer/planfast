# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def vote_text(vote, hide_votes)
    if (vote.nil? || vote == 0)
      "Please vote"
    elsif hide_votes
      "?"
    else
      vote 
    end
  end

  def hide_votes(players)
    players.each do |player|
      if player.vote.nil? || player.vote == 0 
        return true
      end
    end
    false
  end

  def average_vote(players)
    sum = 0
    players.each do |player|
      sum += player.vote
    end
    sum / players.size
  end

end
