class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/0.2.0/pragma-0.2.0-universal.zip"
    sha256 "e2b2d2e2061be15b1bbd50f61637d92ecef1e3ace6ddbd325a026ad5fd818354"
    version "0.2.0"
    license "Apache-2.0"
  
    bottle :unneeded
  
    def install
      bin.install "lib"
      begin
        bin.install "jre"
      rescue
        opoo "JRE is not included with the installation. You may need to install Java."
      end
      bin.install "bin/pragma"
    end
end