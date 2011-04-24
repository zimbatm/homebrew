require 'formula'

class Gsteditor < Formula
  url 'http://gst-editor.googlecode.com/files/gsteditor-0.10.3.2.tar.gz'
  homepage ''
  md5 '85f8bc2b3302efd209101748b5a8669c'

  depends_on 'libglade'
  depends_on 'gdk-pixbuf'
  depends_on 'scrollkeeper'
  depends_on 'gettext'
  depends_on 'intltool'
  depends_on 'gstreamer'
  depends_on 'libdvdread'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
