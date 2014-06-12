class AddNombreArtisticoToSocios < ActiveRecord::Migration
  def change
    add_column :socios, :nombre_artistico, :string
    add_column :socios, :codigo, :string
  end
end
