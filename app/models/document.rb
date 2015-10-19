class Document < ActiveRecord::Base
	attachment :file
	validates_presence_of :title
end
