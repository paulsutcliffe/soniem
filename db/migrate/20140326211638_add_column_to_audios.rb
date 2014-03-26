class AddColumnToAudios < ActiveRecord::Migration
  def change
    add_column :audios, :socio_id, :integer
  end
end
