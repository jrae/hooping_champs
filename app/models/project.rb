class Project < ActiveRecord::Base


  has_attached_file :image, :styles => { :large => "300x300#", :small => "150x150#" }

  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }

end