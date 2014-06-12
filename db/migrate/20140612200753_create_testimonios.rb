class CreateTestimonios < ActiveRecord::Migration
  def change
    create_table :testimonios do |t|
      t.string :nombre
      t.text :mensaje

      t.timestamps
    end
  end
end
