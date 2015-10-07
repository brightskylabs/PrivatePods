Pod::Spec.new do |spec|
  spec.name         = 'dji-sdk'
  spec.version      = '2.4.0'
  spec.license = { :type => 'Commercial' }
  spec.summary      = 'DJI SDK'
  spec.homepage     = 'http://www.dji.com'
  spec.author       = 'DJI'
  spec.source       = { :git => 'git@github.com:brightskylabs/dji-sdk.git', :commit => 'v2.4.0' }
  spec.source_files = 'DJI/VideoPreviewer/*.{h,m}', 'DJI/VideoPreviewer/DJIH264Decoder/include/*'
  spec.public_header_files = 'DJI/Lib/DJISDK.framework/Headers/*.h', 'DJI/VideoPreviewer/DJIH264Decoder/include/*'
  spec.preserve_paths = 'DJI/**'
  spec.vendored_frameworks = 'DJI/Lib/DJISDK.framework'
  spec.vendored_libraries = 'DJI/VideoPreviewer/DJIH264Decoder/lib/libDJIVTH264Decoder.a'
  spec.requires_arc = true
  spec.platform = :ios, '8.0'
  spec.dependency 'sky-ffmpeg'
end
