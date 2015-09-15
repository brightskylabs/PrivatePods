Pod::Spec.new do |spec|
  spec.name         = 'kxmovie'
  spec.version      = '1.0'
  spec.license = { :type => 'lgpl', :file => 'lgpl-3.0.txt' }
  spec.summary      = 'A movie player for iOS based on FFmpeg'
  spec.homepage     = 'https://github.com/kolyvan'
  spec.author       = 'kolyvan_ru'
  spec.source       = { :git => 'https://github.com/brightskylabs/kxmovie.git', :tag => 'v1.0' }
  spec.source_files = 'kxmovie/*.{h,m}'
  spec.prefix_header_file = 'kxmovie/kxmovie-Prefix.pch'
  spec.resource = 'kxmovie/kxmovie.bundle'
  spec.requires_arc = true
  spec.platform     = :ios, '8.0'
  spec.dependency 'FFmpeg/precompiled'
  spec.xcconfig = {
      'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/FFmpeg/ffmpeg-ios-static-libs/lib"',
    }
end