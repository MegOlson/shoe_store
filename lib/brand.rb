class Brand < ActiveRecord::Base
  has_and_belong_to_many(:stores)
end
