Pod::Spec.new do |s|
  s.name         = "sky-CocoaLUT"
  s.version      = "1.0"
  s.summary      = "LUTs (1D and 3D color lookup tables) for Cocoa applications."
  s.homepage     = "http://github.com/videovillage/CocoaLUT"
  s.license      = "MIT"
  s.authors      = {
      "Wil Gieseler" => "wil@wilgieseler.com",
      "Greg Cotten" => "greg@gregcotten.com"
  }
  s.source       = { :git => "https://github.com/brightskylabs/CocoaLUT.git", :commit => "7d4b74eb1acaa8babf09a4f94a9b82cb2e785a84" }
  s.platform     = :ios, '7.0'
  
  s.resource_bundles = {
    "TransferFunctionLUTs" => "Assets/TransferFunctionLUTs/*.cube",
    "ManufacturerLUTs" => "Assets/ManufacturerLUTs/*.cube"
  }
  s.source_files = "Classes/**/*"
  s.public_header_files = "Classes/**/*.h"
  s.requires_arc = true
  s.frameworks = 'UIKit', 'QuartzCore', 'GLKit'
  s.dependency 'RegExCategories'
  s.dependency 'M13OrderedDictionary'
  s.dependency 'XMLDictionary'
end
