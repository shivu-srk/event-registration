class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :venue
      t.datetime :date

      t.timestamps
    end
  end
end
