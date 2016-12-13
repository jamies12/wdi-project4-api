class AddColorToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :color, :string
  end
end
