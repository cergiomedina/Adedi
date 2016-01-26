class CreateMulta < ActiveRecord::Migration
  def change
    create_table :multa do |t|
      t.integer :id_multa
      t.integer :total_multa

      t.timestamps
    end
  end
end
