class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.float :price
      t.string :author
      t.string :condition
      t.string :bookclass
      t.string :bookediton
      t.text :description
      t.string :ISBN

      t.timestamps
    end
  end
end
