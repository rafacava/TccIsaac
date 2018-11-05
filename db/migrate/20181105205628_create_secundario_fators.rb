class CreateSecundarioFators < ActiveRecord::Migration[5.2]
  def change
    create_table :secundario_fators do |t|
      t.string :nome

      t.timestamps
    end
  end
end
