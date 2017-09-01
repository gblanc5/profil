class CreateGivemealerts < ActiveRecord::Migration[5.1]
  def change
    create_table :givemealerts do |t|
      t.references :contact, foreign_key: true
      t.datetime :sendtodate
      t.string :sendtowho

      t.timestamps
    end
  end
end
