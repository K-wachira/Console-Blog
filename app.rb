require_relative 'authorauth'
require_relative  'authormenu'


class Instance
    def main
        user_type = 0
        until user_type == "3"
            puts "Welcome to Kelvins Blog. \n Press:"
            puts "1. To log in as Author. \n2. To log in as viewer.\n3. To quit"
            user_type = gets.chomp
            if user_type == "1"
                authorInstance = AuthorAuth.new
                if authorInstance.author_login == true
                    puts "You selected Author"
                    authmenu = AuthorMenu.new
                    authmenu.main
                end
            elsif user_type == "2"
                puts "You selected Viewer"
            end
        end
    end 
end
