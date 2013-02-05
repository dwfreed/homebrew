require 'formula'

class Pkgconf < Formula
  homepage 'https://github.com/pkgconf/pkgconf/'
  url 'http://rabbit.dereferenced.org/~nenolod/distfiles/pkgconf-0.9.3.tar.bz2'
  sha1 'd5847397c12bfbb67cd23b3a3e9873b66e51aca0'

  conflicts_with "pkg-config"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
    ln_s 'pkgconf', bin/'pkg-config'
  end
end

