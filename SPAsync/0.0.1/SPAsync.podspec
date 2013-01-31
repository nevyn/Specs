Pod::Spec.new do |s|
  s.name     = 'SPAsync'
  s.author   = { 'Joachim Bengtsson' => 'joachimb@gmail.com' }
  s.version  = '0.0.1'
  s.license  = 'LICENSE'
  s.summary  = 'Tools to write asynchronous Objective-C.'
  s.description = 'SPTask for generic callbacks, SPAgent for making classes into agents, and SPAwait for non-blockingly pausing methods while waiting for asynchronous data.'
  s.homepage = 'https://github.com/nevyn/SPAsync'

  s.source   = { :git => 'https://github.com/nevyn/SPAsync.git', :commit => 'd740bf5a55d20c547ccb3c879d961b0908d43c88' }
  s.public_header_files = "include/SPAsync/*.h"
  s.source_files = ['Sources/*.{h,m}', 'include/SPAsync/*.h']
  s.compiler_flags = "-ISPAsync/include"
	s.preserve_paths = ["include"]
	s.requires_arc = true
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.6'
end
