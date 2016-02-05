# Uncomment this line to define a global platform for your project
platform :ios, '8.0'
# Uncomment this line if you're using Swift
use_frameworks!

# Shared pods
def testing_pods
    #pod 'Quick', '~> 0.8.0'
    #pod 'Nimble', '3.0.0'
end

target 'Presence-iOS' do

# Networking
pod 'Alamofire', '~> 3.0'
pod 'ReachabilitySwift', git: 'https://github.com/ashleymills/Reachability.swift'

# Custom navigation
pod 'AHKNavigationController'

# Progress HUD's
pod 'SVProgressHUD'

end

target 'Presence-iOSTests' do
  testing_pods
end

target 'Presence-iOSUITests' do
  testing_pods
end
