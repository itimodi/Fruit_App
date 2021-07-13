class CreateBananas < ActiveRecord::Migration[5.2]
  def change
    create_table :bananas, id: :uuid do |t|
    	t.string :name

      t.timestamps
    end
  end
end
