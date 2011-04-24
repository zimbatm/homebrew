require 'formula'

class Goocanvas < Formula
  url 'http://ftp.gnome.org/pub/GNOME/sources/goocanvas/0.15/goocanvas-0.15.tar.gz'
  homepage ''
  md5 '6aa45b558da47458306acf7a9dadc54f'

  # depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
