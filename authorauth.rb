require 'json' 

class AuthorAuth
    def _get_authors
        file = File.read('./db/authors.json')
        @data_hash = JSON.parse(file)
    end

    def check_author(author)
        self._get_authors
        @data_hash.each do |key, value|
            if key == author
                return true
            end
        return false
        end
    end

    def author_login
        user_name = ""
        until user_name == "q"
            puts "Enter your User Name, to go back enter q"
            user_name = gets.chomp
            password =""
            if self.check_author(user_name)
                until password == "q"
                    puts "Enter password for #{user_name}"
                    password = gets.chomp
                    if self.check_password(user_name, password)
                        puts "Logged in Successfully"
                        return true
                    else
                        puts "Wrong Password, try again or enter q to quit!"
                    end
                end
            elsif user_name == "q"
                break
            else 
                puts "User does not exist in our DB"
            end
        end
        return false
    end

    def check_password(author, password)
        return @data_hash[author] == password.to_i
    end
end
