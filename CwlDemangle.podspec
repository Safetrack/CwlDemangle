Pod::Spec.new do |s|
  s.name         = 'CwlDemangle'
  s.version      = '1.1.0'
  s.summary      = 'A translation (line-by-line in many cases) of Swift\'s Demangler.cpp into Swift.'

  s.description  = <<-DESC
                  A translation (line-by-line in many cases) of Swift\'s Demangler.cpp into Swift.
	           DESC

  s.homepage     = 'https://github.com/Safetrack/CwlDemangle'
  s.license      = 'Copyright 2019 Trackunit A/S'
  s.authors      = { 'Trackunit' => 'info@trackunit.com' }
  s.ios.deployment_target = '10.0'

  s.source       = { :git => 'git@github.com:Safetrack/CwlDemangle.git', :tag => "#{s.version}" }

  s.source_files = 'CwlDemangle/CwlDemangle.swift'
  s.swift_version = '5.0'
end
