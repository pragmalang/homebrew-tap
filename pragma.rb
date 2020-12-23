class Pragma < Formula
    desc "The Pragma CLI"
    homepage "https://github.com/pragmalang/pragma"
    url "https://github.com/pragmalang/pragma/releases/download/0.2.0/pragma.jar"
    sha256 "4f265322cba77a86a5feee0099ad2a085c717dbb775134615afd8ec9001a5d67"
    version "0.2.0"
    license "Apache-2.0"
  
    bottle :unneeded

    def install
      bin.install "pragma.jar"
      File.write(bin/"pragma", "#!/bin/bash\n(java -version > /dev/null 2>&1 || echo 'Could not run java command. Please install Java from https://www.oracle.com/java/technologies/javase-jdk15-downloads.html before running pragma.') && java -jar #{bin/"pragma.jar"} \"$@\"")
      system "chmod", "+x", bin/"pragma"
      prefix.install_symlink bin/"pragma"
    end
end