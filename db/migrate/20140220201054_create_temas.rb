class CreateTemas < ActiveRecord::Migration
  def change
    create_table :temas do |t|
      t.string :titulo
      t.date :ano
      t.string :duracion
      t.string :formato

      t.timestamps
    end
  end
end
