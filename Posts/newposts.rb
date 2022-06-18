#!/usr/bin/ruby -w

require_relative 'post'

class Newposts < Posts
  attr_reader :title, :author, :body, :isPublished, :publishdate, :index
  def create_post
    @title  = self.new_title
    @author= self.new_author
    @body = self.new_body
    @isPublished = false
    @publishdate = self.new_time
    @index= get_post_count.to_i + 1
    hash = {
      "title": @title,
      "author": @author,
      "body": @body,
      "isPublished": @isPublished,
      "publishdate":  @publishdate,
    }
    add_post( hash, index)
    return
  end 

  def new_title
    puts "Enter the title of your blog. To cancel press q and Enter"
    title = gets.chomp
    if title == "q"
      return ''
    end
    return title
  end

  def new_author
    puts "Enter your name. To cancel press q and Enter"
    author_name = gets.chomp
    if author_name == "q"
      return ''
    end
    return author_name
  end


  def new_body
    puts "Type your blog below. To cancel press q and Enter"
    blog_body = gets.chomp
    if blog_body == "q"
      return ''
    end
    return blog_body
  end

  def new_time
    time = Time.new
    return time.year.to_s + "/" + time.month.to_s  + "/" + time.day.to_s  + "  " + time.hour.to_s + ":" + time.min.to_s 
  end 
end
