class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates(:name, :presence => true)
  validates(:name, {:presence => true, :length => { :maximum => 100 }})
  # before_save(:capitalize_first_letter)
  #
  #
  # private
  #
  # def capitalize_first_letter
  #   title = self.title.split(" ")
  #   self.title = title.map{|word| word.capitalize}.join(" ")
  # end

end
