Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "1.0.0"
  s.summary      = "A port of OpenSSL's SSL/TLS and Crypto toolkit to iOS."
  s.homepage     = "http://www.bindlebinaries.com/products/developer/iosports/"
  s.license      = 'BSD-style Open Source'
  s.author       = { "David M. Syzdek" => "syzdek@bindlebinaries.com" }
  s.source       = { :git => "https://github.com/bindle/iOSPorts.git", :tag => "v0.6" }
  s.preserve_paths = "build-aux"
  s.libraries    = 'libssl', 'libcrypto'
  s.requires_arc = false
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => 'openssl openssl/include openssl/crypto', 'OTHER_LDFLAGS' => '-ObjC' }

  def pre_install(pod, target_definition)
    Dir.chdir(pod.root){ `sh make.sh` }
  end

end
