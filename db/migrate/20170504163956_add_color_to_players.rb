class AddColorToPlayers < ActiveRecord::Migration[5.0]
  def up
    add_column :players, :color, :string
    Player.find_each do |player|
      player.save
    end
  end

  def down
    remove_column :players, :color
  end
end
