class CreaetRecruitments < ActiveRecord::Migration[5.2]
  def change
    create_table :recruitments do |t|
      t.integer :play_now
      t.string :game_title
      t.text :comment
      t.integer :machine
      t.string :image
      t.integer :on_off
      t.integer :purpouse
      t.string :youtube_url
    end
  end
end
