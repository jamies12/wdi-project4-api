class AddJsonToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :elements, :jsonb
  end
end
