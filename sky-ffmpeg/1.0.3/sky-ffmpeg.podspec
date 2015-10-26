Pod::Spec.new do |spec|
  spec.name         = 'sky-ffmpeg'
  spec.version      = '1.0.3'
  spec.license = { :type => 'lgpl' }
  spec.summary      = 'FFmpeg libraries'
  spec.homepage     = 'https://ffmpeg.org'
  spec.author       = 'ffmpeg'
  spec.source       = { :git => 'git@github.com:brightskylabs/ffmpeg-lib.git', :commit => '22460ea8fd27f674c05b7e9e084e3c71695f6526' }
  spec.source_files = 'include/**/*.h'
  spec.public_header_files = 'include/**/*.h'
  spec.requires_arc = false
  spec.platform = :ios, '8.0'
  spec.vendored_libraries = 'lib/*.a'
  spec.libraries = 'avcodec', 'avdevice', 'avfilter', 'avformat', 'avutil', 'swresample', 'swscale'
  spec.header_mappings_dir = 'include'
end
