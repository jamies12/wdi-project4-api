class ChangeTypeToTypeOfContent < ActiveRecord::Migration[5.0]
  def change
    rename_column :contents, :type, :type_of_content
  end
end
