class CreateAuditoria < ActiveRecord::Migration
  def change
    create_table :auditoria do |t|
      t.integer :id_log
      t.integer :rut_usuario
      t.string :tabla_afectada
      t.string :instruccion
      t.string :datos_antes
      t.string :datos_despues
      t.string :fecha_modificacion

      t.timestamps
    end
  end
end
