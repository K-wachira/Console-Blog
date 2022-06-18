#!/usr/bin/ruby -w

require_relative 'post'

class Newposts < Posts
  include postmodule
  def create_post
    @title  = self.new_title("")
    @author= self.new_author("")
    @body = self.new_body("")
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
end
