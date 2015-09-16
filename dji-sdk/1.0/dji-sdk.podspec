Pod::Spec.new do |spec|
  spec.name         = 'dji-sdk'
  spec.version      = '1.0'
  spec.license = { :type => 'Commercial', :file => 'project-brood-level1-beta-iOS-20140811/README.txt' }
  spec.summary      = 'DJI SDK'
  spec.homepage     = 'http://www.dji.com'
  spec.author       = 'DJI'
  spec.source       = { :git => 'https://github.com/brightskylabs/dji-sdk.git', :commit => 'a27f5b8b7b8eb6f2899bca0f6d86fb796e8ddf69' }
  spec.public_header_files = 'DJI-SDK-iOS-LV1-V1.0/Lib/DJISDK.framework/Headers/*.h'
  spec.preserve_paths = 'DJI-SDK-iOS-LV1-V1.0/Lib/**'
  spec.vendored_frameworks = 'DJI-SDK-iOS-LV1-V1.0/Lib/DJISDK.framework'
  spec.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/DJI-SDK-iOS-LV1-V1.0/Lib/DJISDK.framework"' }
  spec.requires_arc = true
  spec.platform = :ios, '8.0'
end