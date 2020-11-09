class BookSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :author, :date, :note, :category
  belongs_to :category
end
