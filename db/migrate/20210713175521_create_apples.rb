class CreateApples < ActiveRecord::Migration[5.2]
  def change
    create_table :apples, id: :uuid do |t|
    	t.string :name

      t.timestamps
    end
  end
end
