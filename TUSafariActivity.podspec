Pod::Spec.new do |s|
  s.name             = "TUSafariActivity"
  s.version          = "1.0.5"
  s.summary          = "A UIActivity subclass that opens URLs in Safari."
  s.homepage     = "https://github.com/davbeck/TUSafariActivity"
  s.screenshots  = "http://f.cl.ly/items/3e3W360A0f0v0Z392u0W/iOS%20Simulator%20Screen%20Shot%20Oct%204,%202014,%2011.54.20%20AM.png"
  s.social_media_url = 'https://twitter.com/davbeck'
  s.license      = 'BSD'
  s.author       = { "David Beck" => "code@thinkultimate.com" }
  s.platform     = :ios, '6.0'
  s.source       = { :git => "https://github.com/davbeck/TUSafariActivity.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'TUSafariActivity' => ['Pod/Assets/*']
  }
end
