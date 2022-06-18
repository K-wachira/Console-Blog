require_relative '../Admin/Posts/post'

class View < Posts
    def display_published_posts
        arr = []
        header = ["Index", "Title", "Author",  "Body", "Publishdate" ]
        arr << header
        @posts.each do |index, post|
            publish =  false
            temp = []
            temp << index
            post.each do |key, value|
                if key == "isPublished" and value == true
                    print value
                    publish = true
                end
                temp << value
            end
            if publish
                arr << temp
            end
        end
        arr.to_table
    end
end