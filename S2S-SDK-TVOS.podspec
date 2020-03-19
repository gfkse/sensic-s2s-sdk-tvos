Pod::Spec.new do |s|
    s.name              = 'S2S-SDK-TVOS'
    s.version           = '1.11.3'
    s.summary           = 'S2S-SDK-TVOS'
    s.homepage          = 'http://www.gfk.com/'
    s.author            = { 'GfK' => 'info@gfk.com' }
    s.platform          = :tvos
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/1.11.3/s2s_sdk_tvos_1.11.3.zip'}
    s.tvos.deployment_target = '12.4'
    s.tvos.vendored_frameworks = 's2s_sdk_tvos.framework'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' }
end
