Pod::Spec.new do |spec|
  spec.name         = '10-ios-sdk'
  spec.version      = '1.0'
  spec.license = { :type => 'Commercial', :text => <<-LICENSE
                     Copyright 2015 Brightsky Labs
                   LICENSE
                 }
  spec.summary      = 'An Objective-C client for 10 API'
  spec.homepage     = 'https://brightsky.co'
  spec.author       = 'Brightsky Labs'
  spec.source       = { :git => 'https://github.com/brightskylabs/10-ios-sdk.git', :tag => '1.0' }
  spec.source_files = 'SKYAPI.h', 'Clients/*', 'Models/*', 'Requests/*'
  spec.requires_arc = true
  spec.platform     = :ios, '8.0'
  spec.dependency 'AFNetworking'
  spec.dependency 'Reachability'
  spec.dependency 'AWSiOSSDKv2/S3'
  spec.dependency 'FileMD5Hash'
  spec.dependency 'Firebase', '2.3.2'
  spec.xcconfig = {
    'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/Firebase"',
  }
end