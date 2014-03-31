class CollectionItem < ActiveRecord::Base
  belongs_to :collection_group
  
  scope :all_tunics, -> {where(collection_group_id: 3)}
  scope :all_kimonos, -> {where(collection_group_id: 2)}
end
