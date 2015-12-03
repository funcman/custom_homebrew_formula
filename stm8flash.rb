class Stm8flash < Formula
    desc "Program your stm8 devices with SWIM/stlinkv(1,2)"
    homepage "https://github.com/vdudouyt/stm8flash"
    url "https://github.com/vdudouyt/stm8flash/archive/46c8e1b1c309cbdf23ba21f2869ac565f10e8cfb.zip"
    version "46c831b"
    sha256 "fb2cab19a3c5e14efeb047013c2baf7d14ff1164922619e9befc7c911c7bbc7f"

    depends_on "pkg-config"
    depends_on "libusb"

    def install
        system "make"
        system "cp", "stm8flash", "#{prefix}/"
        system "ln", "-fs", "#{prefix}/stm8flash", "/usr/local/bin/stm8flash"
    end
end
