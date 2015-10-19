class Document < ActiveRecord::Base
	attachment :file
	validates_presence_of :title
	has_and_belongs_to_many :categories
end
