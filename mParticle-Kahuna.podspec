Pod::Spec.new do |s|
    s.name             = "mParticle-Kahuna"
    s.version          = "6.0.2"
    s.summary          = "Kahuna integration for mParticle"

    s.description      = <<-DESC
                       This is the Kahuna integration for mParticle.
                       DESC

    s.homepage         = "https://www.mparticle.com"
    s.license          = { :type => 'Apache 2.0', :file => 'LICENSE' }
    s.author           = { "mParticle" => "support@mparticle.com" }
    s.source           = { :git => "https://github.com/mparticle-integrations/mparticle-apple-integration-kahuna.git", :tag => s.version.to_s }
    s.social_media_url = "https://twitter.com/mparticles"

    s.ios.deployment_target = "7.0"
    s.ios.source_files      = 'mParticle-Kahuna/*.{h,m,mm}'
    s.ios.dependency 'mParticle-Apple-SDK/mParticle', '~> 6.0'
    s.ios.dependency 'Kahuna', '2.3.3'

    s.ios.pod_target_xcconfig = {
        'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/Kahuna/**',
        'OTHER_LDFLAGS' => '$(inherited) -framework "Kahuna"'
    }
end
