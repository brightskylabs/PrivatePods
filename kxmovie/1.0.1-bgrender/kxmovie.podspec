Pod::Spec.new do |spec|
  spec.name         = 'kxmovie'
  spec.version      = '1.0.1-bgrender'
  spec.license = { :type => 'lgpl', :file => 'lgpl-3.0.txt' }
  spec.summary      = 'A movie player for iOS based on FFmpeg'
  spec.homepage     = 'https://github.com/kolyvan'
  spec.author       = 'kolyvan_ru'
  spec.source       = { :git => 'git@github.com:brightskylabs/kxmovie.git', :tag => 'v1.0.1-bgrender' }
  spec.source_files = 'kxmovie/*.{h,m}', 'ffmpeg-compiled/include/**/*.h'
  spec.public_header_files = 'ffmpeg-compiled/include/**/*.h'
  spec.prefix_header_file = 'kxmovie/kxmovie-Prefix.pch'
  spec.resource = 'kxmovie/kxmovie.bundle'
  spec.requires_arc = true
  spec.platform = :ios, '8.0'
  spec.vendored_libraries = 'ffmpeg-compiled/lib/*.a'
  spec.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'postproc', 'avresample', 'swscale'
  spec.header_mappings_dir = 'ffmpeg-compiled/include'
end
