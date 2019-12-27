class CreateTags < ActiveRecord::Migration[6.0]
  def change
    create_table :tags do |t|
      t.string :text

      t.timestamps
    end

    add_index :tags, :text, unique: true
  end
end
