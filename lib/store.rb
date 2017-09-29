class Store < ActiveRecord::Base
  has_and_belong_to_many(:brands)
end
