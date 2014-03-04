class CreateInformaciones < ActiveRecord::Migration
  def change
    create_table :informaciones do |t|
      t.string :titulo
      t.string :foto
      t.text :descripcion

      t.timestamps
    end
  end
end
