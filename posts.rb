class Posts
    attr_reader :title, :author, :body, :isPublished, :publishdate, :index
    def initialize(title, author)
      @title  = title
      @author = author
      @body = body
      @isPublished = isPublished
      @publishdate = publishdate
      @index = index
    end

    def add_post
    end 

    def edit_post
    end

    def delete_post
    end 

    def get_all_posts
    end 

    def disply_all_posts
    end 

    def unpublish
end