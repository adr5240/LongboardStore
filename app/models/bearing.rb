# == Schema Information
#
# Table name: bearings
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  brand       :string           not null
#  material    :string           not null
#  description :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  price       :integer          not null
#  rating      :string           not null
#

class Bearing < ActiveRecord::Base
    validates :name, :brand, :description, :material, :price, :rating, presence: true

    has_many :pictures, as: :picturable

    def self.get_filters
        ["brand", "material", "rating"]
    end
end
