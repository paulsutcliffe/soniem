class ModificarColumnasDeTemas < ActiveRecord::Migration
  def up
    add_column :temas, :autor, :string
  end

  def down
    remove_column :temas, :ano
    remove_column :temas, :duracion
    remove_column :temas, :formato
  end
end
