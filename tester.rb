require 'pry'

class EmailParser

  attr_accessor :list, :emails

  def initialize (emails)
    @emails=emails
    self.parse
  end

  def parse
    @list=[]
    @emails.split(/[, ]/).each do |e|
      if e!="" && !@list.include?(e)
        @list<<e
      end
    end
    @list
  end
end

emails = "john@doe.com, person@somewhere.org, john@doe.com"
emails2 = "john@doe.com person@somewhere.org john@doe.com"
parser=EmailParser.new(emails)
parser2=EmailParser.new(emails2)
binding pry
