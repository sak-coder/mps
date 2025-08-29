# my_flutter_module.podspec
Pod::Spec.new do |s|
  s.name             = 'my_flutter_module'
  s.version          = '1.0.0'
  s.summary          = 'A Flutter module for iOS integration'
  s.description      = <<-DESC
This is a Flutter module that can be integrated into native iOS applications.
                       DESC
  s.homepage         = 'https://github.com/sak-coder/mps'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sak' => 'sak@myphsar.com' }
  s.source           = { :git => 'https://github.com/sak-coder/mps.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.static_framework = true

  # Flutter framework
  s.vendored_frameworks = [
    'Flutter/App.framework',
    'Flutter/Flutter.framework',
    'Flutter/FlutterPluginRegistrant.framework',
  ]

  # Flutter engine and plugins
  s.preserve_paths = 'Flutter/*.framework'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-framework Flutter' }
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
end