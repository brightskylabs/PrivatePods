Pod::Spec.new do |spec|
spec.name         = 'BPRE'
spec.version      = '1.0'
spec.license = { :type => 'Commercial', :text => <<-LICENSE
Copyright 2015 Brightsky Labs
LICENSE
}
spec.summary      = 'Best Parts Recognition Engine'
spec.homepage     = 'https://brightsky.co'
spec.author       = 'Brightsky Labs'
spec.source       = { :git => 'git@github.com:brightskylabs/BPRE.git', :commit => '11a7565d76a9c46470f286fc041c36d4ae2aadd0' }
spec.source_files = 'SKYBestPartsRecEngine.h', 'FeatureDetection/*', 'FeatureDetection/FaceDetection/*', 'FeatureDetection/Motion/*', 'FeatureDetection/Loudness/*', 'EventAnalyzers/*', 'BestParts/*', 'AssetReader/*', 'AssetReader/Video/*', 'AssetReader/Frame/*', 'AssetReader/Frame/Filters/*'
spec.requires_arc = true
spec.platform     = :ios, '8.0'
spec.framework = 'opencv2'
spec.dependency 'OpenCV', '2.4.8'
spec.xcconfig = {
'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/OpenCV"',
}
end
