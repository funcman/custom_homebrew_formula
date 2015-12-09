class Nesasm < Formula
    desc "6502 assembler supporting the PC Engine and NES consoles"
    homepage "http://www.magicengine.com/mkit/"
    url "https://github.com/toastynerd/nesasm/archive/999d1e27f9978abe9a917f63d510b469cc5df43b.zip"
    version "3.1-999d1e2"
    sha256 "5cbc887f32717a7ef1a19a5a6d845a4d4f29f1ce95bc1ccb22acc907237a8dec"

    def install
        system "make"
        system "cp", "./bin/nesasm", "#{prefix}/"
        system "ln", "-fs", "#{prefix}/nesasm", "/usr/local/bin/nesasm"
    end
end
