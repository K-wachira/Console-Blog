require_relative './Posts/newposts'

class AuthorMenu
    def main
        selection = ""
        until selection == "q"
            puts "Select Action: \n1.Add new Post. \n2.Edit Post. \n3.Delete a post. \n4.View all posts. \n5.Un/Publish post . "
            selection = gets.chomp
            post = Posts.new
            if selection == "1"
                puts "Add new Post"
                new_post = Newposts.new
                new_post.create_post
            elsif selection == "2"
                puts "Edit a post"
            elsif selection == "3"
                puts "Delete a post"
            elsif selection == "4"
                post.display_all_posts(false)
            elsif selection == "5"
                puts "Un/publish"
            else
                break
            end
        end
    end

    def create_new_post
        Puts "Creating new post"
        new_post = Newposts.new
    end
end