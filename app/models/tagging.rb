class Tagging < ActiveRecord::Base
	include Mongoid::Document	
	field :tag_id, type: Integer 
	field :article_id, type: Integer 

  belongs_to :tag
  belongs_to :article
end
