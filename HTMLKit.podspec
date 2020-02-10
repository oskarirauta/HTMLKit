Pod::Spec.new do |s|
  s.name             = 'HTMLKit'
  s.version          = '1.0.0'
  s.license          = { :type => 'Free', :text => 'Free' }
  s.summary          = 'A Swift framework extending CommonKit with location support. Can also be used as a standalone without CommonKit'
 
  s.description      = <<-DESC

HTMLKit extends few existing classes/types and provides some injection 
assistants.
                       DESC
 
  s.homepage         = 'https://github.com/oskarirauta/HTMLKit'
  s.author           = { 'Oskari Rauta' => 'oskari.rauta@gmail.com' }
  s.source           = { :git => 'https://github.com/oskarirauta/HTMLKit.git', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '13.2'
  s.source_files = [
			'HTMLKit/HTMLKit/Extensions/*.swift',
			'HTMLKit/HTMLKit/HTML/*.swift'
		]

end
