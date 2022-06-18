module postmodule 
    def new_title(inital)
        puts "Enter the title of your blog. To cancel press q and Enter"
        title = gets.chomp
        if title == "q"
          return inital
        end
        return title
      end
    
      def new_author(inital)
        puts "Enter your name. To cancel press q and Enter"
        author_name = gets.chomp
        if author_name == "q"
          return inital
        end
        return author_name
      end
    
    
      def new_body(inital)
        puts "Type your blog below. To cancel press q and Enter"
        blog_body = gets.chomp
        if blog_body == "q"
          return inital
        end
        return blog_body
      end
    
      def new_time
        time = Time.new
        return time.year.to_s + "/" + time.month.to_s  + "/" + time.day.to_s  + "  " + time.hour.to_s + ":" + time.min.to_s 
      end 
end