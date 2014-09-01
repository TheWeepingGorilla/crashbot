class Link < ActiveRecord::Base
  has_many :comments, :as => :commentable
  validates_presence_of :link, :date
end
