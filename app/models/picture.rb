# == Schema Information
#
# Table name: pictures
#
#  id                 :integer          not null, primary key
#  picturable_id      :integer
#  picturable_type    :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Picture < ActiveRecord::Base
    has_attached_file :image, default_url: "missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    belongs_to :picturable, polymorphic: true
end
