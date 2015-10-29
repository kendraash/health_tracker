class Food < ActiveRecord::Base

  validates_presence_of :name, :calories

  def self.search(search)
    if search
      where('name ILike ?', "#{search}%")
    else
      self.all
    end
  end
end
