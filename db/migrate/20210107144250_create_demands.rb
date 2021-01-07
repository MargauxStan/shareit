class CreateDemands < ActiveRecord::Migration[6.0]
  def change
    create_table :demands do |t|
      t.string :name
      t.string :description
      t.date :starts_at
      t.date :ends_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
