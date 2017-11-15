# Maintainer: liberodark

pkgname=chromium-codecs
pkgver=62.0.3202.89
pkgrel=1
pkgdesc="additional support for proprietary codecs for chromium x264 and netflix"
arch=('x86_64')
url="https://ffmpeg.org/"
license=('custom')
depends=('xdg-utils')
source_x86_64=("https://github.com/liberodark/Chromium-Codecs/releases/download/${pkgver}/chromium-browser.tar.gz")
sha512sums_x86_64=('e5b94098b6630aabb51f03d5643405021aecdfb4a04fbcb48d3ced1a131327cca4544ec75502647682dc52a767f55097df82c544eaf24e05ebdcc746bf7c3fe0')
        
package() {
  cd $srcdir
  tar xvf chromium-browser.tar.gz
  cp -r chromium-browser $pkgdir
  rm -r $pkgdir/chromium-browser
  install -vDm644 $srcdir/chromium-browser/libffmpeg.so $pkgdir/usr/lib/chromium-browser/libffmpeg.so
  install -vDm644 $srcdir/chromium-browser/libwidevinecdm.so "$pkgdir/usr/lib/chromium/libwidevinecdm.so"
}
