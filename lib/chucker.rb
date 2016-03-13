require "chucker/version"
require "httparty"

module Chucker
  def self.say
    response = HTTParty.get('http://api.icndb.com/jokes/random')
    if response.code == 200
      system 'figlet "Go Chuck ! ! !"'
      puts
      puts response['value']['joke']
    end
  end
end
