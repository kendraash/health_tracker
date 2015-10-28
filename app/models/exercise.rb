class Exercise < ActiveRecord::Base
  def self.search(search)
    if search
      # find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
      where('name ILike ?', "#{search}%")

    else
      self.all
    end
  end
end
