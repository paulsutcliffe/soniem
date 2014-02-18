class CreateConvenios < ActiveRecord::Migration
  def change
    create_table :convenios do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
