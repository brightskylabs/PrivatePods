Pod::Spec.new do |spec|
  spec.name         = 'kxmovie'
  spec.version      = '1.0.2'
  spec.license = { :type => 'lgpl', :file => 'lgpl-3.0.txt' }
  spec.summary      = 'A movie player for iOS based on FFmpeg'
  spec.homepage     = 'https://github.com/kolyvan'
  spec.author       = 'kolyvan_ru'
  spec.source       = { :git => 'git@github.com:brightskylabs/kxmovie.git', :commit => '82824c5f780b410efda4e18ed0abfabee56ef32b' }
  spec.source_files = 'kxmovie/*.{h,m}'
  spec.prefix_header_file = 'kxmovie/kxmovie-Prefix.pch'
  spec.resource = 'kxmovie/kxmovie.bundle'
  spec.requires_arc = true
  spec.platform = :ios, '8.0'
  spec.dependency 'sky-ffmpeg'
end
