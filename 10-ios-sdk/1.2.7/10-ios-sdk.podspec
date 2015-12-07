Pod::Spec.new do |spec|
  spec.name = '10-ios-sdk'
  spec.version = '1.2.7'
  spec.license = { :type => 'Commercial', :text => <<-LICENSE
                     Copyright 2015 Brightsky Labs
                   LICENSE
                 }
  spec.summary = 'An Objective-C client for 10 API'
  spec.homepage = 'https://brightsky.co'
  spec.author = 'Brightsky Labs'
  spec.source = { :git => 'git@github.com:brightskylabs/10-ios-sdk.git', :tag => 'v1.2.7' }
  
  spec.ios.deployment_target = '8.0'
  spec.tvos.deployment_target = '9.0'
  
  spec.requires_arc = true
  
  pch_10SDK = <<-EOS
#ifndef TARGET_OS_IOS
  #define TARGET_OS_IOS TARGET_OS_IPHONE
#endif
#ifndef TARGET_OS_WATCH
  #define TARGET_OS_WATCH 0
#endif
#ifndef TARGET_OS_TV
  #define TARGET_OS_TV 0
#endif
EOS
  spec.prefix_header_contents = pch_10SDK
  
  spec.public_header_files = 'SKYAPI.h'
  spec.dependency 'AFNetworking', '3.0.0-beta.2'
  
  spec.subspec 'Core' do |subspec|
    subspec.ios.deployment_target = '8.0'
	subspec.tvos.deployment_target = '9.0'
    subspec.source_files = 'SKYAPI.h', 'Clients/SKYAPIClient.{h,m}', 'Clients/SKYAPIRetryClient.{h,m}', 'Models/*', 'Requests/*', 'Categories/*'
	subspec.ios.dependency '10-ios-sdk/Push'
  end
  
  spec.subspec 'Upload' do |subspec|
    subspec.ios.deployment_target = '8.0'
	subspec.source_files = 'Clients/SKYAWSUploader.{h,m}'
	subspec.dependency 'AWSiOSSDKv2/S3', '2.2.7'
	subspec.dependency 'FileMD5Hash', '2.0.0'
	subspec.ios.dependency '10-ios-sdk/Core'
  end
  
  spec.subspec 'Push' do |subspec|
    subspec.ios.deployment_target = '8.0'
	subspec.source_files = 'Clients/SKYAPIPushClient.{h,m}', 'Models/*', 'Clients/SKYAPIClient.{h,m}', 'Clients/SKYAPIRetryClient.{h,m}'
	subspec.dependency 'Firebase', '2.4.2'
  end
end 
