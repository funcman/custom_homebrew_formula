class I386ElfBinutils < Formula
    desc "FSF Binutils for i386 ELF"
    homepage "https://www.gnu.org/software/binutils/binutils.html"
    url "http://ftpmirror.gnu.org/binutils/binutils-2.25.1.tar.gz"
    mirror "https://ftp.gnu.org/gnu/binutils/binutils-2.25.1.tar.gz"
    sha256 "82a40a37b13a12facb36ac7e87846475a1d80f2e63467b1b8d63ec8b6a2b63fc"

    # Fixes build on 10.6. Committed upstream; will be in the next release:
    # https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff;h=31593e1b96c792abba3c5268d6423975aefa56b2
    patch :p1 do
        url "https://gist.githubusercontent.com/mistydemeo/f14c03c0c9ddfce97cf7/raw/2107e53002c34e41ade9b54629e670184e438d80/binutils_10.6.diff"
        sha256 "5ff40b9d7ad174d3c24edd8381471b8f5c408703111f0c90135ad0fffba452c2"
    end

    def install
        system "./configure",   "--disable-debug",
                                "--disable-dependency-tracking",
                                "--prefix=#{prefix}",
                                "--infodir=#{info}",
                                "--mandir=#{man}",
                                "--disable-werror",
                                "--enable-ld=yes",
                                "--enable-interwork",
                                "--enable-multilib",
                                "--target=i386-elf"
        system "make"
        system "make", "install"
    end
end
