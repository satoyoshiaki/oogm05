class AddUserRefToRecruitments < ActiveRecord::Migration[5.2]
  def change
    add_reference :recruitments, :user, foreign_key: true
  end
end
