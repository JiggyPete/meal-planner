class Recipe < ActiveRecord::Base
  has_many :ingredients
  accepts_nested_attributes_for :ingredients,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
