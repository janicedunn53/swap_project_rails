class Listing < ActiveRecord::Base
  belongs_to :user
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates :name, :presence => true
  validates :description, :presence => true
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
