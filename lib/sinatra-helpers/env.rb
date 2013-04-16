require 'sinatra/base'

# see Sinatra
module Sinatra
	# see Sinatra
	module Helpers
		
		# Environment mode helpers.
		#
		# Usage:
		#
		# Include the module in your Sinatra application:
		#
		#   helpers ::Sinatra::Helpers::Env
		#
		module Env
			
			# Returns the environment mode.
			#
			# @return           [Symbol]   The mode.
			#
			def env_mode
				[ settings.environment, ::ENV['RACK_ENV'],
				].each { |mode|
					return mode.to_sym  if (mode && ! mode.empty?)
				}
				return :development
			end
			
			# Checks for a given environment mode.
			#
			# @param   mode     [Symbol]   The mode to check for.
			# @return                      `true` or `false`
			#
			def env_mode?( mode )
				return self.env_mode == mode.to_sym
			end
			
		end
	end
	
	#helpers Helpers::Env
	#::Sinatra::Base.helpers Helpers::Env
end

