class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :body
      t.integer :position
      t.string :type

      t.timestamps
    end
  end
end
