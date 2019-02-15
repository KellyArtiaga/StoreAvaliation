class Store < ApplicationRecord
    has_many :store_avaliations
    scope :by_store_avaliation, -> store_avaliation { where(:store_avaliation => store_avaliation)}
    
end
