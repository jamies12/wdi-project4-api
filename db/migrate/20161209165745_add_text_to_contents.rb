class AddTextToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :text, :text
  end
end
