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
pod 'Alamofire', '~> 4.4'
pod 'ReachabilitySwift', '~> 3'

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
