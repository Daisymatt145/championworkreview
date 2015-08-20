class CreateChampionworks < ActiveRecord::Migration
  def change
    create_table :championworks do |t|
      t.string :name
      t.string :email
      t.string :workcategory
      t.string :description
      t.timestamps
    end
  end
end



