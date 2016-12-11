class AddSpaceToContent < ActiveRecord::Migration[5.0]
  def change
    add_reference :contents, :space, foreign_key: true
  end
end
