require 'builder'
require 'json'

require 'bundler/setup'
require 'curb'
require 'sinatra/base'

class App < Sinatra::Base
  get '/' do
    "Provide a user/repo combination, dummy."
  end

  get '/:user/:repo', provides: ['rss', 'atom', 'xml'] do
    @repo = "#{params[:user]}/#{params[:repo]}"
    @issues = JSON.parse(Curl::Easy.perform("https://api.github.com/repos/#{@repo}/issues").body_str)
    builder :index
  end
end
