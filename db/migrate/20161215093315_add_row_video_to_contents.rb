class AddRowVideoToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :video, :string
  end
end
