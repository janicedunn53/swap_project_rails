class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :neighborhood
  has_many :listings, as: :listingable
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :username, :presence => true
  validates :neighborhood, :presence => true
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
