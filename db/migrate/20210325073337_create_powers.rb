class CreatePowers < ActiveRecord::Migration[6.1]
  def change
    create_table :powers do |t|
      t.string :name
      t.text :description
      t.belongs_to :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
