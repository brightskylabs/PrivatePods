Pod::Spec.new do |spec|
  spec.name         = 'sky-ffmpeg'
  spec.version      = '1.0.1'
  spec.license = { :type => 'lgpl' }
  spec.summary      = 'FFmpeg libraries'
  spec.homepage     = 'https://ffmpeg.org'
  spec.author       = 'ffmpeg'
  spec.source       = { :git => 'git@github.com:brightskylabs/ffmpeg-lib.git', :tag => 'v1.0.1' }
  spec.source_files = 'include/**/*.h'
  spec.public_header_files = 'include/**/*.h'
  spec.requires_arc = false
  spec.platform = :ios, '8.0'
  spec.vendored_libraries = 'lib/*.a'
  spec.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale', 'postproc', 'avresample', 'swscale'
  spec.header_mappings_dir = 'include'
end
