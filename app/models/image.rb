class Image < ApplicationRecord
	has_attached_file :asset,
    :styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
    validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
    validates :asset, attachment_presence: true
    validates_with AttachmentPresenceValidator, attributes: :asset
end
