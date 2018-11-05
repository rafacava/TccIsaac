class CreateDiagnosticos < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnosticos do |t|
      t.string :nome
      t.references :principal_fator, foreign_key: true
      t.references :secundario_fator, foreign_key: true
      t.references :terciario_fator, foreign_key: true
      t.references :principal_caracteristica, foreign_key: true
      t.references :secundaria_caracteristica, foreign_key: true
      t.references :terciaria_caracteristica, foreign_key: true

      t.timestamps
    end
  end
end
