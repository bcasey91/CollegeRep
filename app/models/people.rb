class People < ActiveRecord::Base

  validates :name, :presence => true, :uniqueness => true

  attr_accessible :name, :class_year, :major

  has_many :posts


end
