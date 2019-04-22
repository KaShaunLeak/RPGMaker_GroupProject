class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :sex
      t.string :age
      t.string :race
      t.string :job
      t.string :birthday
      t.string :magic
      t.string :birth
      t.string :country
      t.string :personality
      t.string :backstory
      t.string :strong

      t.timestamps
    end
  end
end
