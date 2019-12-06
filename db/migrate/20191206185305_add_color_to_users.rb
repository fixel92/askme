class AddColorToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color_header, :string, default: '#005a55'
  end
end
