class CreateTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :titles do |t|
      t.text :title, null:false
      t.timestamps
    end
  end
end
