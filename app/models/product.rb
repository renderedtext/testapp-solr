class Product < ActiveRecord::Base
  validates :name, :price, :presence => true

  searchable do
    text :name
    text :description
  end
end
