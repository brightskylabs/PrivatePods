Pod::Spec.new do |s|
s.name = "sky-vuforia"
s.version = "0.0.2"
s.summary = "AR model viewer if imagetarget is found"
s.homepage = "http://brightsky.co"
s.license = "Brightsky Labs, all rights reserved"
s.author = "Brightsky Labs"
s.platform = :ios, '8.0'
s.source = { :git => "git@github.com:brightskylabs/sky-vuforia.git", :commit => "59b6994d23be0efda2382092b43b67198c38e36f"}
s.source_files = "Vuforia/QCAR/*", "Vuforia/*"
s.header_dir = 'QCAR'
s.resources = "Vuforia/Resources/*", "Vuforia/"
s.requires_arc = true
s.vendored_libraries = "Vuforia/Frameworks/libVuforia.a"
end
