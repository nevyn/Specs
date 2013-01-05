Pod::Spec.new do |s|
  s.name         = "OpenSSL"
  s.version      = "1.0.0"
  s.summary      = "OpenSSL is an SSL/TLS and Crypto toolkit. Deprecated in Mac OS and gone in iOS, this spec gives your project non-deprecated OpenSSL support."
  s.author       = "OpenSSL Project <openssl-dev@openssl.org>"
  
  s.homepage     = "http://www.openssl.org/"
  s.license      = 'BSD-style Open Source'
  
  s.source       = { :http => "http://www.openssl.org/source/openssl-1.0.0a.tar.gz"}
  s.requires_arc = false
  s.xcconfig     = { 'HEADER_SEARCH_PATHS' => 'openssl openssl/include openssl/crypto'}
  
  s.source_files = 'ssl/*.{h,c}'

  
  s.subspec "crypto" do |crypto|
    crypto.source_files = 'crypto/**{.h.c}'
    crypto.header_mappings_dir = "crypto"
  end
  
  s.subspec "ssl" do |ssl|
    ssl.source_files = 'ssl/*.{h,c}'
    ssl.header_mappings_dir = "ssl"
    ssl.dependency "OpenSSL/crypto"
  end
  
  s.preferred_dependency = 'ssl'

end
