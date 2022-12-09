class AddUserToLists < ActiveRecord::Migration[7.0]
  def change
    List.destroy_all
    add_reference :lists, :user, null: false, foreign_key: true
  end
end
