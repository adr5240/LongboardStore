# == Schema Information
#
# Table name: trucks
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  brand        :string           not null
#  hole_pattern :string           not null
#  description  :string           not null
#  width        :float            not null
#  angle        :float            not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  price        :integer
#

class Truck < ActiveRecord::Base
    validates :name, :brand, :description, :hole_pattern, :width, :angle, :price, presence: true

    has_many :pictures, as: :picturable
end
