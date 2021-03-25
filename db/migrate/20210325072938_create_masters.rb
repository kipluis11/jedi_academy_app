class CreateMasters < ActiveRecord::Migration[6.1]
  def change
    create_table :masters do |t|
      t.string :name
      t.string :preferred_sabre_color
      t.string :sabre_style

      t.timestamps
    end
  end
end
