require 'json'

class Posts 

    def initialize
        @file_name = './db/posts.json'
        file = File.read(@file_name)
        @posts = JSON.parse(file)
    end 

    def add_post( hash, index)
        @posts[index.to_s] = hash
        File.write(@file_name, JSON.dump(@posts))
        return
    end

    def display_all_posts(dev)
        arr = []
        header = ["Index", "Title", "Author",  "Body", "IsPublished", "Publishdate" ]
        arr << header
        @posts.each do |index, post|
            temp = []
            temp << index
            post.each do |key, value|
                temp << value
            end
            arr << temp
        end
        arr.to_table
    end 

    def get_post_count
        
        count = 0
        @posts.each {|k| count +=1 }
        return count
    end

    
end

# credits https://stackoverflow.com/questions/36156305/console-table-format-in-ruby
class Array
    def to_table(header: true)
      column_sizes = self.reduce([]) do |lengths, row|
        row.each_with_index.map{|iterand, index| [lengths[index] || 0, iterand.to_s.length].max}
      end
      head = '+' + column_sizes.map{|column_size| '-' * (column_size + 2) }.join('+') + '+'
      puts head
  
      to_print = self.clone
      if (header == true)
        header = to_print.shift
        print_table_data_row(column_sizes, header)
        puts head
      end
      to_print.each{ |row| print_table_data_row(column_sizes, row) }
      puts head
    end
  
    private
    def print_table_data_row(column_sizes, row)
      row = row.fill(nil, row.size..(column_sizes.size - 1))
      row = row.each_with_index.map{|v, i| v = v.to_s + ' ' * (column_sizes[i] - v.to_s.length)}
      puts '| ' + row.join(' | ') + ' |'
    end
  end
  