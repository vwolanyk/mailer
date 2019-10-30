class CreateMailGiphs < ActiveRecord::Migration[5.2]
  def change
    create_table :mail_giphs do |t|
      t.string :name
      t.string :href

      t.timestamps
    end
  end
end
