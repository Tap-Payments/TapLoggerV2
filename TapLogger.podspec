Pod::Spec.new do |tapLogger|
    
    tapLogger.platform              = :ios
    tapLogger.ios.deployment_target = '10.0'
    tapLogger.swift_version         = '4.2'
    tapLogger.name                  = 'TapLoggerV2'
    tapLogger.summary               = 'Basic logger utility.'
    tapLogger.requires_arc          = true
    tapLogger.version               = '1.0.0'
    tapLogger.license               = { :type => 'MIT', :file => 'LICENSE' }
    tapLogger.author                = { 'Osama Rabie' => 'o.rabie@tap.company' }
    tapLogger.homepage              = 'https://github.com/Tap-Payments/TapLoggerV2'
    tapLogger.source                = { :git => 'https://github.com/Tap-Payments/TapLoggerV2.git', :tag => tapLogger.version.to_s}
    tapLogger.source_files          = 'TapLogger/Source/*.swift'
    
    tapLogger.dependency 'TapAdditionsKitV2'
    
end
