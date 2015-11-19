Pod::Spec.new do |s|
s.name = "sky-vuforia"
s.version = "0.0.9"
s.summary = "AR model viewer if imagetarget is found"
s.homepage = "http://brightsky.co"
s.license = "Brightsky Labs, all rights reserved"
s.author = "Brightsky Labs"
s.platform = :ios, '8.0'
s.source = { :git => "git@github.com:brightskylabs/sky-vuforia.git", :commit => "a0176418ed8ae20e364438a3477f13b3635c71e3"}
s.source_files = "Vuforia/QCAR/*", "Vuforia/*"
s.header_dir = 'QCAR'
s.resources = "Vuforia/Resources/*", "Vuforia/", "Vuforia/shaders/*"
s.requires_arc = true
s.vendored_libraries = "Vuforia/Frameworks/libVuforia.a"
end
