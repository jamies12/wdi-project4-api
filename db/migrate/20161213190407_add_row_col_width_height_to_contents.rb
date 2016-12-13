class AddRowColWidthHeightToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :row, :integer, default: 0
    add_column :contents, :col, :integer, default: 0
    add_column :contents, :sizeX, :integer, default: 0
    add_column :contents, :sizeY, :integer, default: 0

    remove_column :contents, :position
    remove_column :contents, :elements
  end
end
