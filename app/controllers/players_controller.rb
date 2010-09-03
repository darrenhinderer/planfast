class PlayersController < ApplicationController

  def index
    @player = Player.find_by_id(session[:id])
    @players = Player.all

    respond_to do |format|
      format.html
    end
  end

  def create
    @player = Player.create(params[:player])
    session[:id] = @player.id
    @players = Player.all

    render :juggernaut => {:type => :send_to_all} do |page|
      page[:player_list].replace_html :partial => "player_list"
    end
    render :nothing => true
  end

  def destroy
    player = Player.destroy(params[:id])
    @players = Player.all

    render :juggernaut => {:type => :send_to_all} do |page|
      page[:player_list].replace_html :partial => "player_list"
    end
    render :nothing => true
  end
  

end
