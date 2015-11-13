Pod::Spec.new do |s|
s.name = "sky-vuforia"
s.version = "0.0.2"
s.summary = "AR model viewer if imagetarget is found"
s.homepage = "http://brightsky.co"
s.license = "Brightsky Labs, all rights reserved"
s.author = "Brightsky Labs"
s.platform = :ios, '8.0'
s.source = { :git => "git@github.com:brightskylabs/sky-vuforia.git", :commit => "2793be4cf93a8967361ba2dc90ff4d3861d58f3c"}
s.source_files = "Vuforia/QCAR/*", "Vuforia/*"
s.header_dir = 'QCAR'
s.resources = "Vuforia/Resources/*", "Vuforia/"
s.requires_arc = true
s.vendored_libraries = "Vuforia/Frameworks/libVuforia.a"
end
