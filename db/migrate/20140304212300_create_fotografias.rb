class CreateFotografias < ActiveRecord::Migration
  def change
    create_table :fotografias do |t|
      t.string :fotografia
      t.integer :socio_id
      t.timestamps
    end
  end
end
