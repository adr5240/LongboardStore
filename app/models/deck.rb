# == Schema Information
#
# Table name: decks
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  brand       :string           not null
#  description :string           not null
#  concave     :string           not null
#  flex        :string           not null
#  mount       :string           not null
#  traction    :string           not null
#  shape       :string           not null
#  price       :integer          not null
#  length      :float            not null
#  width       :float            not null
#  wheelbase   :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Deck < ActiveRecord::Base
    validates :name, :brand, :description, :concave, :flex, :mount, presence: true
    validates :traction, :shape, :price, :length, :width, :wheelbase, presence: true

    has_attached_file :image, default_url: "missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

end
