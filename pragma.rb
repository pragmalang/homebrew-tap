class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/0.2.0/pragma-0.2.0-macos.zip"
    sha256 "aab25b35b03823fecb440fa2a64dddf4896d32dece810278aa7c42bcf51cb379"
    version "0.2.0"
    license "Apache-2.0"
  
    bottle :unneeded

    depends_on java: "1.11+" if MacOS.version < :catalina
    depends_on "openjdk" if MacOS.version >= :catalina

    def install
      prefix.install "lib"
      begin
        prefix.install "jre"
      rescue
        opoo "JRE is not included with the installation. You may need to install Java."
      end
      prefix.install "bin"
      prefix.install_symlink prefix/"bin"/"pragma"

      Dir.glob(prefix/"*/*").each { |file| 
        begin
          system "xattr", "-d", "com.apple.quarantine", file
          ohai "Removed com.apple.quarantine xattr attribute from #{file}"
        rescue
          ohai "No com.apple.quarantine xattr attribute on #{file}"
        end
      }
    end
end