class ChangeTypeOfContentToImage < ActiveRecord::Migration[5.0]
  def change
    rename_column :contents, :type_of_content, :image
  end
end
