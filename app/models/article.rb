class Article < ActiveRecord::Base

	include Mongoid::Document
	include Mongoid::Paperclip

	field :title, type: String
	field :body, type: String 
	# has_mongoid_attached_file :image
	has_many :comments
	has_many :taggings
	# validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

	def self.after_commit(*args, &block)
    args.each do |arg|
    case arg[:on]
      when :destroy
        after_destroy &block
      end
    end
  end


def tag_list 
self.tags.collect do |tag| 
	tag.name 
end.join(",")
end



def tag_list=(tags_string)
  tag_names = tags_string.split(",").collect{|s| s.strip.downcase}.uniq
  new_or_found_tags = tag_names.collect { |name| Tag.find_or_create_by(name: name) }
  self.tags = new_or_found_tags
end


end