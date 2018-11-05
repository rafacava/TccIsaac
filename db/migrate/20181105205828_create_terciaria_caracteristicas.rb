class CreateTerciariaCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    create_table :terciaria_caracteristicas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
