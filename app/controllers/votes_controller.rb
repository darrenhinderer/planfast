class VotesController < ApplicationController

  def update
    player = Player.find(session[:id])
    player.vote = params[:value]
    player.save
 
    @players = Player.all

    render :juggernaut => {:type => :send_to_all} do |page|
      page[:player_list].replace_html :partial => "players/player_list"
    end
    render :nothing => true
  end

  def reset
    Player.update_all("vote = 'NULL'")
    @players = Player.all

    render :juggernaut => {:type => :send_to_all} do |page|
      page[:player_list].replace_html :partial => "players/player_list"
    end
    render :nothing => true
  end

end
