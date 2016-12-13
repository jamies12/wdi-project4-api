class AddRowColorToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :color, :string
  end
end
