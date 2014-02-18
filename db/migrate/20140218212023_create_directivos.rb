class CreateDirectivos < ActiveRecord::Migration
  def change
    create_table :directivos do |t|
      t.string :nombre
      t.string :cargo
      t.string :foto

      t.timestamps
    end
  end
end
