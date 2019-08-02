class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :name
      t.string :pseudonym
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
