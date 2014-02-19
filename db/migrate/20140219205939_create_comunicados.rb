class CreateComunicados < ActiveRecord::Migration
  def change
    create_table :comunicados do |t|
      t.string :titulo
      t.text :contenido
      t.date :fecha
      t.string :pdf

      t.timestamps
    end
  end
end
