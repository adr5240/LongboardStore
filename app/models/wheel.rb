# == Schema Information
#
# Table name: wheels
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  brand         :string           not null
#  description   :string           not null
#  lip_profile   :string           not null
#  hub_placement :string           not null
#  price         :integer          not null
#  diameter      :integer          not null
#  durometer     :integer          not null
#  width         :integer          not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Wheel < ActiveRecord::Base
    validates :name, :brand, :description, :lip_profile, :hub_placement,
              :price, :diameter, :durometer, :width, presence: true

    has_attached_file :image, default_url: "missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
