class CreateAssignings < ActiveRecord::Migration[7.0]
  def change
    create_table :assignings do |t|
      t.references :project, null: false, foreign_key: true
      t.references :member, null: false, foreign_key: true

      t.timestamps
    end
  end
end
