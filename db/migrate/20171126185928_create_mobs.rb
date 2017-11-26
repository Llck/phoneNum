class CreateMobs < ActiveRecord::Migration[5.1]
  def change
    create_table :mobs do |t|
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
