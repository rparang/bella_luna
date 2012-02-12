class ApplicationController < ActionController::Base
  protect_from_forgery
  
  @client = Twitter.user("rezaparang").location
  
  
  private
  
    def client
      Twitter.configure do |config|
        config.consumer_key = 'JQPj7ZQzI53Zsdf079k1fw'
        config.consumer_secret = 'RDove9MoZkZ4BUbmhE9N2sprkibkYlL3fnjtjRBt8'
        config.oauth_token = '16831800-YnnweZQ9OAfU2s8wsW09DAiVsp3j5kZlATtQADw'
        config.oauth_token_secret = 'YcBwYWfgOHAT6Dto8iD5JCLkIjjsbH1aMfWCw'
      end
      #@client ||= Twitter::Client.new
      @client = Twitter.user("rezaparang").location
    end
  
end
