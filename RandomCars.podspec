Pod::Spec.new do |spec|
  spec.name         = 'RandomCars'
  spec.version      = '0.14.42'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/tareq3/'
  spec.authors      = { 'Tareq' => 'mti.tareq3@gmail.com' }
  spec.summary      = 'Random Cars generator'
  spec.source       = { :git => 'https://github.com/tareq3/RandomCarsFramework.git', :tag => spec.version.to_s }
  spec.requires_arc = true
  spec.ios.deployment_target    = '11.0'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '$(inherited)'
  }




  spec.default_subspec = 'Debug'

  spec.subspec 'Debug' do |sp|
    sp.vendored_frameworks = 'RandomCars.xcframework' 
  end

  spec.subspec 'Release' do |sp|
    sp.vendored_frameworks =  'RandomCars.xcframework' 
  end

  spec.pod_target_xcconfig = { 

  'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386'

 }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 i386' }
  
  spec.dependency 'CryptoSwift', '~> 1.7.1'




end
