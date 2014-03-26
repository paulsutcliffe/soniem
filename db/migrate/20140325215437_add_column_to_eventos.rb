class AddColumnToEventos < ActiveRecord::Migration
  def change
    add_column :eventos, :socio_id, :integer
  end
end
