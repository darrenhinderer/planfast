class Init < ActiveRecord::Migration
  def self.up
    create_table "players" do |t|
      t.integer "vote"
    end
  end

  def self.down
    remove_table "players"
  end
end
