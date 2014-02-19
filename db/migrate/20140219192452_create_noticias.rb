class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.date :fecha
      t.string :imagen
      t.text :contenido

      t.timestamps
    end
  end
end
