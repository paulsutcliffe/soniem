class ModificarColumnasDeTemas < ActiveRecord::Migration
  def change
    add_column :temas, :autor, :string
    remove_column :temas, :ano
    remove_column :temas, :duracion
    remove_column :temas, :formato
  end
end
