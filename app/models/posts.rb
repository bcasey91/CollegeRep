class Posts < ActiveRecord::Base
  attr_accessible :content  

  validates :content, :presence => true, :length => {maximum => 500 }
 
  belongs_to :people

end
