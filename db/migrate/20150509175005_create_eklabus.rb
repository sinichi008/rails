class CreateEklabus < ActiveRecord::Migration
  def change
    create_table :eklabus do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
