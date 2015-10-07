Pod::Spec.new do |spec|
  spec.name         = 'dji-sdk'
  spec.version      = '2.4.0'
  spec.license = { :type => 'Commercial' }
  spec.summary      = 'DJI SDK'
  spec.homepage     = 'http://www.dji.com'
  spec.author       = 'DJI'
  spec.source       = { :git => 'git@github.com:brightskylabs/dji-sdk.git', :commit => '8e46ca41b7f1d7a7a1de9ac492f2aeda055c017b' }
  spec.source_files = 'DJI/VideoPreviewer/*', 'DJI/VideoPreviewer/DJIH264Decoder/include/*'
  spec.public_header_files = 'DJI/Lib/DJISDK.framework/Headers/*.h', 'DJI/VideoPreviewer/DJIH264Decoder/include/*'
  spec.preserve_paths = 'DJI/Lib/**'
  spec.vendored_frameworks = 'DJI/Lib/DJISDK.framework'
  spec.vendored_libraries = 'DJI/VideoPreviewer/DJIH264Decoder/lib/*'
  spec.libraries = 'DJIVTH264Decoder'
  spec.xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/dji-sdk/DJI/Lib/DJISDK.framework"' }
  spec.requires_arc = true
  spec.platform = :ios, '8.0'
  spec.dependency 'sky-ffmpeg'
end
