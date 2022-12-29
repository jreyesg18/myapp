class AddUserIdToPostulations < ActiveRecord::Migration[5.2]
  def change
    add_column :postulations, :user_id, :integer
  end
end
