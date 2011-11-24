class Brochure < ActiveRecord::Base
  validates_presence_of :name, :address_line_1, :postcode, :telephone, :email
end
