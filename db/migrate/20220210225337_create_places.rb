class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string "name"
      t.string "created_at"
      t.string "updated_at"
      t.timestamps
    end
  end
end
