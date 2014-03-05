class CreateFormatos < ActiveRecord::Migration
  def change
    create_table :formatos do |t|
      t.string :pdf
      t.string :titulo

      t.timestamps
    end
  end
end
