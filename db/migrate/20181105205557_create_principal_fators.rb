class CreatePrincipalFators < ActiveRecord::Migration[5.2]
  def change
    create_table :principal_fators do |t|
      t.string :nome

      t.timestamps
    end
  end
end
