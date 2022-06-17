class AuthoMenu
    def main
        selection = ""
        until selection == "q"
            if selection == "1"
                puts "Add new Post"
            elsif selection == "2"
                puts "Edit a post"
            elsif selection == "3"
                puts "Delete a post"
            elsif selection == "4"
                puts "view all posts"
            elsif selection == "5"
                puts "Un/publish"
            else
                break
            end
        end
    end
end