class Exercise < ActiveRecord::Base

  validates_presence_of :name, :calories_burned

  def self.search(search)
    if search
      where('name ILike ?', "#{search}%")

    else
      self.all
    end
  end
end
