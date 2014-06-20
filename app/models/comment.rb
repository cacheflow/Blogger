class Comment < ActiveRecord::Base
	include Mongoid::Document


	field :author_name, type: String
	field :body, type: String 
	field :article_id, type: Integer 





  belongs_to :article
end
