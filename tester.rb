require 'pry'

class EmailParser

  attr_accessor :list, :emails

  def initialize (emails)
    @emails=emails
  end

  def parse
    temp=[]
    @emails.split(',').each do |e|
      if !temp.include?(e)
        temp<<e
      end
    end
    temp
  end
end

emails = "john@doe.com, person@somewhere.org"
parser=EmailParser.new(emails)
binding pry
