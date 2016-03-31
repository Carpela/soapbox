class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :name
      t.string :sector
      t.string :description
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
