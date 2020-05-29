class Author 
  
  attr_accessor :name
  
  def initialize name 
    @name = name
    @posts = []
  end

  
  def add_post post 
    post.author = self
    @posts << post
  end
  
  def posts
    Post.all.select{|author| author.name = self}
  end
  
  def add_post_by_title(title) 
    post = Post.new(title)
    post.author = self
  end
end