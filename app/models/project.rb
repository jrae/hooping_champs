class Project < ActiveRecord::Base

  has_attached_file :image, :styles => { :large => "300x300#", :small => "150x150#" }


end