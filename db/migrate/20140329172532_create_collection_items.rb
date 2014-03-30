class CreateCollectionItems < ActiveRecord::Migration
  def change
    create_table :collection_items do |t|
      t.integer :collection_group_id
      t.string :name
      t.text :description
      t.string :imageUrl1
      t.string :imageUrl2
      t.string :imageUrl3
      t.string :imageUrl4
      t.string :imageUrl5
      t.string :imageUrl6
      t.string :vidUrl1

      t.timestamps
    end
  end
end
