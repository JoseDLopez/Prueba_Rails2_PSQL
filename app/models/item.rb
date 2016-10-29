class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  before_destroy :remove_category_if_empty

  scope :size, ->(x) { where("size = ?", x) }
  scope :without_user, ->{ where(user: nil) }

  def remove_category_if_empty
  	if self.category.items.count.zero?
  		self.category.destroy
  	end
  	true
  end

end
