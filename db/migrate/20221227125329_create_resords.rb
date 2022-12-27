class CreateResords < ActiveRecord::Migration[7.0]
  def change
    create_table :resords do |t|
      t.string :title
      t.string :body
      t.integer :level

      t.timestamps
    end
  end
end
