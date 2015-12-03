class Uzem < Formula
    desc "Uzebox Emulator"
    homepage "http://uzebox.org/wiki/index.php?title=Emulator"
    url "https://github.com/Uzebox/uzebox/archive/4d9d97ba34e4874118f0f8807aedb3bbf5a8ca30.zip"
    version "1.3.3-4d9d97b"
    sha256 "103a0284f202c70ee614edccf22720decb2d2a3e13702aa05d47141d56ff0ff0"

    depends_on "sdl"

    def install
        system "make", "release", "-C./tools/uzem"
        system "cp", "./tools/uzem/uzem", "#{prefix}/"
        system "ln", "-fs", "#{prefix}/uzem", "/usr/local/bin/uzem"
    end
end
