class CreateSecundariaCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    create_table :secundaria_caracteristicas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
