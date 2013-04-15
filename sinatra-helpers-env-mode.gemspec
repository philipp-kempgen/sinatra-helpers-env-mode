# -*- encoding: utf-8 -*-

#lib_dir = File.expand_path( '../lib/', __FILE__ )
#$LOAD_PATH.unshift( lib_dir )

#require 'my_lib/version'

spec = Gem::Specification.new { |s|
	s.name         = 'sinatra-helpers-env-mode'
	s.version      = '0.0.1'
	s.summary      = "Environment mode Sinatra helpers."
	s.description  = "Helpers for environment mode handling in Sinatra (development, test, production)."
	s.author       = "Philipp Kempgen"
	s.homepage     = 'https://github.com/philipp-kempgen/sinatra-helpers-env-mode'
	s.platform     = Gem::Platform::RUBY
	s.require_path = 'lib'
	s.executables  = []
	s.files        = Dir.glob( '{lib,bin}/**/*' ) + %w(
		README.md
	)
	
	s.add_dependency "sinatra", "~> 1.3"
}


# Local Variables:
# mode: ruby
# indent-tabs-mode: t
# End:

