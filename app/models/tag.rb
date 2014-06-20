class Tag < ActiveRecord::Base
	include Mongoid::Document
	
    field :name, type: String
    field :created_at, type: Datetime 
    field :updated_at, type: Datetime

	has_many :taggings
end
