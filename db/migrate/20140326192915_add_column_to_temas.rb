class AddColumnToTemas < ActiveRecord::Migration
  def change
    add_column :temas, :socio_id, :integer
  end
end
