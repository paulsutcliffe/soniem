class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nombre
      t.text :contenido
      t.string :fotografia
      t.string :web
      t.string :twitter
      t.string :facebook
      t.string :soundcloud

      t.timestamps
    end
  end
end
