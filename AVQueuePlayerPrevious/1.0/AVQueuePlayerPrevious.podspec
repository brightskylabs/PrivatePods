Pod::Spec.new do |s|
  s.name         = "AVQueuePlayerPrevious"
  s.version      = "1.0"
  s.summary      = "This is a basic library to extend AVQueuePlayer to provide the ability to play previous items"
  s.homepage     = "https://github.com/dgiovann/AVQueuePlayerPrevious"
  s.license      = "BSD"
  s.author       = "Dan Giovannelli"
  s.platform     = :ios, "8.0"
  s.platform     = :tvos, "9.0"
  s.source       = { :git => "git@github.com:brightskylabs/AVQueuePlayerPrevious.git", :tag => "v1.0" }
  s.source_files = "*.{h,m}"
  s.requires_arc = true
end
