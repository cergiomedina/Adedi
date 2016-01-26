class CreateParametroSistemas < ActiveRecord::Migration
  def change
    create_table :parametro_sistemas do |t|
      t.integer :id_parametro
      t.string :nombre_parametro
      t.integer :valor_parametro

      t.timestamps
    end
  end
end
