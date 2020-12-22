class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/0.2.0/pragma-0.2.0-macos.zip"
    sha256 "aab25b35b03823fecb440fa2a64dddf4896d32dece810278aa7c42bcf51cb379"
    version "0.2.0"
    license "Apache-2.0"
  
    bottle :unneeded
  
    def install
      prefix.install "lib"
      begin
        prefix.install "jre"
      rescue
        opoo "JRE is not included with the installation. You may need to install Java."
      end
      prefix.install "bin"
      prefix.install_symlink prefix/"bin"/"pragma"
    end
end