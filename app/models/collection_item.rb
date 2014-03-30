class CollectionItem < ActiveRecord::Base
  belongs_to :collection_group
  
  scope :all_tunics, -> {where(collection_group_id: 3)}
end
