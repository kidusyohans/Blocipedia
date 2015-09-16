class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.text :body
      t.boolean :private
      t.references :wiki, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
