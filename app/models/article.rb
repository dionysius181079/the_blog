class Article
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :name, type: String
  field :content, type: String
 
  field :tag_words, type: String

  field :published_on, :type => Time

  

  validates_presence_of :name 

  embeds_many :comments
  

  #def info
  #  [first_name, last_name, "(#{email})"].compact.join(' ')
  #end

 
end
