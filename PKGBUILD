# Maintainer: liberodark

pkgname=chromium-codecs
pkgver=60.0.3112.113
pkgrel=1
pkgdesc="additional support for proprietary codecs for chromium x264 and netflix"
arch=('x86_64')
url="https://ffmpeg.org/"
license=('custom')
depends=('xdg-utils')
source_x86_64=("https://github.com/liberodark/Chromium-Codecs/releases/download/60.0.3112.113-1/chromium-browser.tar.gz")
sha512sums_x86_64=('255c97e0a31b2563bb7d70f9284fafa9d298eabd9f6d17d2fe2fd748ac78e089a1eaf0b43e1806c142e781aa07a1bc607ab877ef8e88f81190679871e5b1fbe5')
        
package() {
  cd $srcdir
  tar xvf chromium-browser.tar.gz
  cp -r chromium-browser $pkgdir
  install -vDm644 $srcdir/chromium-browser/libffmpeg.so $pkgdir/usr/lib/chromium-browser/libffmpeg.so
  install -vDm644 $srcdir/chromium-browser/libwidevinecdm.so $pkgdir/usr/lib/chromium-browser/libwidevinecdm.so
  install -vDm644 $srcdir/chromium-browser/libwidevinecdmadapter.so $pkgdir/usr/lib/chromium-browser/libwidevinecdmadapter.so
}
