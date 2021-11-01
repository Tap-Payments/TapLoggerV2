Pod::Spec.new do |tapLogger|
    
    tapLogger.platform              = :ios
    tapLogger.ios.deployment_target = '8.0'
    tapLogger.swift_version         = '4.2'
    tapLogger.name                  = 'TapLogger'
    tapLogger.summary               = 'Basic logger utility.'
    tapLogger.requires_arc          = true
    tapLogger.version               = '1.0.1'
    tapLogger.license               = { :type => 'MIT', :file => 'LICENSE' }
    tapLogger.author                = { 'Dennis Pashkov' => 'd.pashkov@tap.company' }
    tapLogger.homepage              = 'https://github.com/Tap-Payments/TapLogger'
    tapLogger.source                = { :git => 'https://github.com/Tap-Payments/TapLogger.git', :tag => tapLogger.version.to_s}
    tapLogger.source_files          = 'TapLogger/Source/*.swift'
    
    tapLogger.dependency 'TapAdditionsKit/Foundation/DateFormatter'
    tapLogger.dependency 'TapAdditionsKit/Foundation/Locale'
    tapLogger.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    
end
