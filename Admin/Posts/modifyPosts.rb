require_relative 'postmodule'

class ModifyPost < Posts
    include Postmodule

    def edit_post
        puts "Select index of post to edit"
        display_all_posts(false)
        indx = gets.chomp
        while 0 >= indx.to_i or indx.to_i > get_post_count.to_i
            puts "Post index does not exist"
            indx = gets.chomp
        end
        _edit_post(indx)
    end
    
    def _edit_post(index)
        display_one_posts(index)
        puts "Select what you want to modify, To cancel, enter q"
        selection = ""
        until selection == "q"
            puts "Select Action: \n1.Edit Title. \n2.Edit Author. \n3.Edit Body. \n4. Edit"
            selection = gets.chomp
            if selection == "1"
                puts "Enter new Title"
                initial = @posts[index]
                initial["title"] =  new_title(initial["title"])
                initial['publishdate'] = new_time
                add_post( initial, index)

            elsif selection == "2"
                puts "Enter new author"
                initial = @posts[index]
                initial["author"] =  new_author(initial["author"])
                initial['publishdate'] = new_time
                add_post( initial, index)
            elsif selection == "3"
                puts "Enter new body"
                initial = @posts[index]
                initial["body"] =  new_body(initial["body"])
                initial['publishdate'] = new_time
                add_post( initial, index)
            else
                break
            end
        end
    end

    def nano_edit(index, section)
        initial = @post[index][section]

    end
    def delete_post
    end 
    
    def publish_unpublish
        puts "Select index of post to publish/unpublish"
        display_all_posts(false)
        indx = gets.chomp
        while 0 >= indx.to_i or indx.to_i > get_post_count.to_i
            puts "Post index does not exist"
            indx = gets.chomp
        end
        publish_unpublishP(indx)
    end

    
    def publish_unpublishP(index)
        initial = @posts[index]
        initial["isPublished"] =  initial["isPublished"]? false : true
        add_post( initial, index)
    end
end