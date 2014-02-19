class CreateUbicaciones < ActiveRecord::Migration
  def change
    create_table :ubicaciones do |t|
      t.float :lat
      t.float :lng
      t.string :direccion

      t.timestamps
    end
  end
end
