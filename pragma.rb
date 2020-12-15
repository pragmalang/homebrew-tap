class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/v0.1.0/pragma-universal.zip"
    sha256 "fbac9131942c17ac80f9c3dea27332890496dfcb0135e4f3c4018b2de237bdd1"
    version "0.1.0"
    license "Apache-2.0"
  
    bottle :unneeded
  
    def install
      bin.install "bin/pragma"
    end
end