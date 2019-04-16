class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :race
      t.string :job

      t.timestamps
    end
  end
end
