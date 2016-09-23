Pod::Spec.new do |s|
    s.name         = "UIKit+CUAddition"
    s.version      = "0.0.1"
    s.summary      = "UIKit+CUAddition."
    s.homepage     = "https://github.com/AmineChan"
    s.license      = "MIT"
    s.author       = {"czm" => "328525910@qq.com",}
    s.platform      = :ios, '7.0'

    s.source       = { :git  => "https://github.com/AmineChan/UIKit-CUAddition.git", :tag => s.version }

    s.requires_arc  = true
    s.source_files  = "UIKit+CUAddition/*.{h,m}"

    s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'
end
