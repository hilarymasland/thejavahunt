class City < ActiveRecord::Base
  has_many :shops, dependent: :destroy
end
