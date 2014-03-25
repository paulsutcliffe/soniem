class CreateTemasNoRegistrados < ActiveRecord::Migration
  def change
    create_table :temas_no_registrados do |t|
      t.string :titulo
      t.string :autor

      t.timestamps
    end
  end
end
