class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  scope :size, ->(x) { where("size = ?", x) }
  scope :without_user, ->{ where(user: nil) }
end
