class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/0.2.0/pragma.jar"
    sha256 "aab25b35b03823fecb440fa2a64dddf4896d32dece810278aa7c42bcf51cb379"
    version "0.2.0"
    license "Apache-2.0"
  
    bottle :unneeded

    def install
      bin.install "pragma.jar"
      File.write(bin/"pragma", "#!/bin/bash\njava -jar pragma.jar \"$@\" || echo 'Could not run java command. Please install Java from https://www.oracle.com/java/technologies/javase-jdk15-downloads.html before running pragma.' && false")
      system "chmod" "+x" bin/"pragma"
      prefix.install_symlink bin/"pragma"
    end
end