class AddNameToUser < ActiveRecord::Migration[6.0]
  def change
    #追加
    add_column :users, :name, :string, null: false, default: ""
  end
end
