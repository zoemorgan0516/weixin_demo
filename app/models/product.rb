class Product
  include Mongoid::Document
  field :name, type: String
  field :price, type: BigDecimal
  field :age, type: Integer
end
