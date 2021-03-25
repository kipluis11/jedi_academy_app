class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.string :training_name
      t.boolean :completed
      t.belongs_to :master, null: false, foreign_key: true

      t.timestamps
    end
  end
end
