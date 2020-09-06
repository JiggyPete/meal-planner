class Recipe < ActiveRecord::Base
  has_many :ingredients, -> { order "created_at" }
  accepts_nested_attributes_for :ingredients,
    :allow_destroy => true,
    :reject_if     => :all_blank
end
