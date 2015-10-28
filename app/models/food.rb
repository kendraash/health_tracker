class Food < ActiveRecord::Base
  def self.search(search)
    if search
      where('name ILike ?', "#{search}%")
    else
      self.all
    end
  end
end
