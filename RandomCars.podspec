Pod::Spec.new do |spec|
  spec.name         = 'RandomCars'
  spec.version      = '0.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/tareq3/RandomCarsFramework'
  spec.authors      = { 'Tareq' => 'mti.tareq3@gmail.com' }
  spec.summary      = 'Random Cars generator'
  spec.source       = { :git => 'https://github.com/tareq3/RandomCarsFramework', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '10.0'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }
 
  spec.vendored_frameworks = 'RandomCars.xcframework'



end