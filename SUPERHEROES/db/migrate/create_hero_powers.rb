class CreateHeroPowers < ActiveRecord::Migration[6.1]
    def change
      create_table :hero_powers do |t|
        t.references :hero, foreign_key: true
        t.references :power, foreign_key: true
        t.string :strength
  
        t.timestamps
      end
    end
  end
  