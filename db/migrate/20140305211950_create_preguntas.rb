class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :pregunta
      t.text :respuesta

      t.timestamps
    end
  end
end
