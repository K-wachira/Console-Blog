class ModifyPost < Posts
    def edit_post
        puts "Select index of post to edit"
        post.display_all_posts(false)
        indx = gets.chomp
        while 0>= indx.to_i > get_post_count.to_i
            puts "Post index does not exist"
            indx = gets.chomp
        end
    end
    
    private
    def _edit_post(index)
        

    end
    def delete_post
    end 
    
    def publish_unpublish
    end
end