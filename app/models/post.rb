class Post < ApplicationRecord

  translates :title, :description, :body

  extend FriendlyId
  friendly_id :title, :use => :slugged

  

  has_and_belongs_to_many :categories

  has_attached_file :asset, styles: { large: "771x365>" , medium: "560x271>", thumb: "571x181#"}
  validates_attachment_content_type :asset, content_type: /\Aimage\/.*\z/
  validates :asset, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :asset
end
