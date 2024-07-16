Pod::Spec.new do |s|
    s.name              = 'S2S-SDK-TVOS'
    s.version           = '1'
    s.summary           = 'S2S-SDK comes with third-party dependencies. In order to avoid particular dependencies, please use the respective subspecs.'
    s.homepage          = 'https://confluence-docu.gfk.com/pages/viewpage.action?pageId=19595365'
    s.author            = { 'GfK' => 'gfkSensic@gmail.com' }
    s.platform          = :tvos
    s.source            = { :http => 'https://s3.eu-central-1.amazonaws.com/download.sensic.net/s2s/sdk/ios/testing/1/s2s_sdk_tvos_1.zip'}
    s.tvos.deployment_target = '12.4'
    s.tvos.vendored_frameworks = 's2s_sdk_tvos.xcframework'
    s.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.1' }


    s.subspec 'Bitmovin' do |bitmovin|
     bitmovin.vendored_framework = 's2s_sdk_tvos_bitmovin.xcframework'
    end

    s.subspec 'AVPlayer-GoogleAds' do |avplayer|
     avplayer.dependency 'GoogleAds-IMA-tvOS-SDK'
     avplayer.vendored_framework = 's2s_sdk_tvos_avplayer_googleAds.xcframework'
    
    end
 
     s.subspec 'AgentOnly' do |player|
     player.vendored_framework = 's2s_sdk_tvos_agent_only.xcframework'
    end
end
