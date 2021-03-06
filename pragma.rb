class Pragma < Formula
    version "0.3.2"
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/#{version}/pragma.jar"
    sha256 "daf5d284ef028dba391de70b2ad0fcf4b385d9418d1938a066b8ae0a7c7f0db7"
    license "Apache-2.0"
  
    bottle :unneeded

    def install
      bin.install "pragma.jar"
      File.write(bin/"pragma", "#!/bin/bash\n(java -version > /dev/null 2>&1 || echo 'Could not run java command. Please install Java from https://www.oracle.com/java/technologies/javase-jdk15-downloads.html before running pragma.') && java -jar #{bin/"pragma.jar"} \"$@\"")
      system "chmod", "+x", bin/"pragma"
      prefix.install_symlink bin/"pragma"
    end
end