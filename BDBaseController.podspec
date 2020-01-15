#
#  Be sure to run `pod spec lint BDBaseController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

 s.name         = "BDBaseController"
 s.version      = "1.0.1"
 s.ios.deployment_target = '9.0'
  
  s.summary      = "Usefull tool for objective-c develop."
  s.description  = "Usefull tool for objective-c develop.Help yourself in this post.And buy me a cup of coffee.Just kidding.Anyway Where is coffee shop?"
  s.homepage     = "https://github.com/reference/BDBaseController"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Scott Ban" => "imti_bandianhong@126.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/reference/BDBaseController.git", :tag => "#{s.version}" }

  s.frameworks = "UIKit", "Foundation", "WebKit"
  s.requires_arc = true

  s.source_files  =  "Controller/BDBaseController.h"
  s.public_header_files = "Controller/BDBaseController.h"

    s.dependency "BDToolKit"
    s.dependency "ZXToolbox"
    s.dependency "FFToast"
    s.dependency "MJRefresh"
    s.dependency "DZNEmptyDataSet"
    s.dependency "ReactiveObjC"

    s.subspec "BDBaseDefine" do |ss|
        ss.source_files  = "Controller/BDBaseDefine/*.{h,m}"
        ss.public_header_files = "Controller/BDBaseDefine/*.h"
    end
    
    s.subspec "BDBaseViewController" do |ss|
        ss.dependency 'BDBaseDefine'
        ss.source_files  = "Controller/BDBaseViewController/*.{h,m}"
        ss.public_header_files = "Controller/BDBaseViewController/*.h"
    end
    
    s.subspec "BDHTTP" do |ss|
        ss.dependency "AFNetworking"
        ss.dependency "YYModel"
        ss.source_files  = "Controller/BDHTTP/*.{h,m}"
        ss.public_header_files = "Controller/BDHTTP/*.h"
    end
    
    s.subspec "BDBaseTableViewController" do |ss|
        ss.dependency 'BDBaseDefine'
        ss.source_files  = "Controller/BDBaseTableViewController/*.{h,m}"
        ss.public_header_files = "Controller/BDBaseTableViewController/*.h"
    end

    s.subspec "BDBaseCollectionViewController" do |ss|
        ss.dependency 'BDBaseDefine'
        ss.source_files  = "Controller/BDBaseCollectionViewController/*.{h,m}"
        ss.public_header_files = "Controller/BDBaseCollectionViewController/*.h"
    end

    s.subspec "BDBaseViewModel" do |ss|
        ss.source_files  = "Controller/BDBaseViewModel/*.{h,m}"
        ss.public_header_files = "Controller/BDBaseViewModel/*.h"
    end

    s.subspec "BDWebViewController" do |ss|
        ss.dependency 'BDBaseViewController'
        ss.source_files  = "Controller/BDWebViewController/*.{h,m}"
        ss.public_header_files = "Controller/BDWebViewController/*.h"
    end

    s.subspec "UITableView+Refresh" do |ss|
        ss.source_files  = "Controller/Category/UITableView+Refresh/*.{h,m}"
        ss.public_header_files = "Controller/Category/UITableView+Refresh/*.h"
    end

    s.subspec "UIViewController+HUD" do |ss|
        ss.source_files  = "Controller/Category/UIViewController+HUD/*.{h,m}"
        ss.public_header_files = "Controller/Category/UIViewController+HUD/*.h"
    end

    s.subspec "UITableViewController+HUD" do |ss|
        ss.source_files  = "Controller/Category/UITableViewController+HUD/*.{h,m}"
        ss.public_header_files = "Controller/Category/UITableViewController+HUD/*.h"
    end

    s.subspec "UICollectionViewController+HUD" do |ss|
        ss.source_files  = "Controller/Category/UICollectionViewController+HUD/*.{h,m}"
        ss.public_header_files = "Controller/Category/UICollectionViewController+HUD/*.h"
    end

    s.subspec "BDScanController" do |ss|
        ss.dependency 'BDBaseViewController'
        ss.source_files  = "Controller/BDScanController/*.{h,m}"
        ss.public_header_files = "Controller/BDScanController/*.h"
        ss.resource_bundles = {
            'BDBaseController' => 'Controller/BDScanController/Res/*'
        }
    end

end
