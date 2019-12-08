class AddColorBorderImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color_border_img, :string, default: '#00b6ad'
  end
end
