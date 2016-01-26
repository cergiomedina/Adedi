class CreateDisfrazs < ActiveRecord::Migration
  def change
    create_table :disfrazs do |t|
      t.integer :id_disfraz
      t.string :categoria_disfraz
      t.integer :stock_disfraz
      t.integer :stock_disponible

      t.timestamps
    end
  end
end
