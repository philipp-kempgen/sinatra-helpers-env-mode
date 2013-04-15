require 'sinatra/base'

module Sinatra
	module Helpers
		module Env
			
			def env_mode
				[ settings.environment, ::ENV['RACK_ENV'],
				].each { |mode|
					return mode.to_sym  if (mode && ! mode.empty?)
				}
				return :development
			end
			
			def env_mode?( mode )
				return mode.to_sym == self.env_mode
			end
			
		end
	end
	
	#helpers Helpers::Env
	#::Sinatra::Base.helpers Helpers::Env
end

