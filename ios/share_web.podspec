Pod::Spec.new do |s|
    s.name             = 'share_web'
    s.version          = '0.0.1'
    s.summary          = 'No-op implementation of share_web web plugin to avoid build issues on iOS'
    s.description      = <<-DESC
  temp fake share_web plugin
                         DESC
    s.homepage         = 'https://github.com/nsoeffers/share_web'
    s.license          = { :file => '../LICENSE' }
    s.author           = { 'Niels Soeffers' => 'nsoeffers@gmail.com' }
    s.source           = { :path => '.' }
    s.source_files = 'Classes/**/*'
    s.public_header_files = 'Classes/**/*.h'
    s.dependency 'Flutter'

    s.ios.deployment_target = '8.0'
  end