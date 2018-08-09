class Product < ApplicationRecord

  belongs_to :pharmaceuticalform, :inverse_of => :products

  belongs_to :pharmaceuticalgroup, :inverse_of => :products

  extend FriendlyId
    friendly_id :name, use: :slugged

  def should_generate_new_friendly_id?
    name_changed?
  end

	has_attached_file :asset, styles: { medium: "270x309>"}
  validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
  validates :asset, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :asset

  has_attached_file :document
  validates_attachment :document, content_type: { content_type: "application/pdf" }
  /validates :document, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :document/

  scope :order_name, ->{ order('name') }
  scope :most_recent, ->{ order(id: :desc) }
  scope :order_name_a, ->{ where("name LIKE ?", "a%").order('name') }
  scope :order_name_b, ->{ where("name LIKE ?", "b%").order('name') }
  scope :order_name_c, ->{ where("name LIKE ?", "c%").order('name') }
  scope :order_name_d, ->{ where("name LIKE ?", "d%").order('name') }
  scope :order_name_e, ->{ where("name LIKE ?", "e%").order('name') }
  scope :order_name_f, ->{ where("name LIKE ?", "f%").order('name') }
  scope :order_name_g, ->{ where("name LIKE ?", "g%").order('name') }
  scope :order_name_h, ->{ where("name LIKE ?", "h%").order('name') }
  scope :order_name_i, ->{ where("name LIKE ?", "i%").order('name') }
  scope :order_name_j, ->{ where("name LIKE ?", "j%").order('name') }
  scope :order_name_k, ->{ where("name LIKE ?", "k%").order('name') }
  scope :order_name_l, ->{ where("name LIKE ?", "l%").order('name') }
  scope :order_name_m, ->{ where("name LIKE ?", "m%").order('name') }
  scope :order_name_n, ->{ where("name LIKE ?", "n%").order('name') }
  scope :order_name_o, ->{ where("name LIKE ?", "o%").order('name') }
  scope :order_name_p, ->{ where("name LIKE ?", "p%").order('name') }
  scope :order_name_q, ->{ where("name LIKE ?", "q%").order('name') }
  scope :order_name_r, ->{ where("name LIKE ?", "r%").order('name') }
  scope :order_name_s, ->{ where("name LIKE ?", "s%").order('name') }
  scope :order_name_t, ->{ where("name LIKE ?", "t%").order('name') }
  scope :order_name_u, ->{ where("name LIKE ?", "u%").order('name') }
  scope :order_name_v, ->{ where("name LIKE ?", "v%").order('name') }
  scope :order_name_w, ->{ where("name LIKE ?", "w%").order('name') }
  scope :order_name_x, ->{ where("name LIKE ?", "x%").order('name') }
  scope :order_name_y, ->{ where("name LIKE ?", "y%").order('name') }
  scope :order_name_z, ->{ where("name LIKE ?", "z%").order('name') }
end
