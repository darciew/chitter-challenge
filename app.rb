require 'sinatra/base'
require './lib/peep'

class Chitter < Sinatra::Base

  get '/peeps' do
    @peeps = Peep.all.reverse
    erb :peeps
  end

  run! if app_file == $0

end