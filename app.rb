require_relative './Admin/authorauth'
require_relative  './Admin/authormenu'
require_relative './User/view'

class Instance
    def main
        user_type = 0
        until user_type == "3"
            puts "Welcome to Kelvins Blog. \n Press:"
            puts "1. To log in as Author. \n2. To log in as viewer.\n3. To quit"
            user_type = gets.chomp
            if user_type == "1"
                authorInstance = AuthorAuth.new
                authmenu = AuthorMenu.new
                authmenu.main
                # if authorInstance.author_login == true
                #     puts "You selected Author"
                #     authmenu = AuthorMenu.new
                #     authmenu.main
                # end
            elsif user_type == "2"
                puts "You selected Viewer"
                viewer = View.new 
                viewer.display_published_posts()
            end
        end
    end 
end
