class StorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :author, :description, :link, :category
  belongs_to :category
end
