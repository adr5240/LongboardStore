class UpdateAgain < ActiveRecord::Migration
  def change
       remove_column :orders, :session_id
  end
end
