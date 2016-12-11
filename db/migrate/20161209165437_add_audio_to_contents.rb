class AddAudioToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :audio, :string
  end
end
