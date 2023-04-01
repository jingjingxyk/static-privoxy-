#!/usr/biin/env bash
set -exu
__DIR__=$(
  cd "$(dirname "$0")"
  pwd
)
__PROJECT__=$(
  cd ${__DIR__}/../../
  pwd
)
cd ${__PROJECT__}

# package search  包搜索

# https://cygwin.com/cgi-bin2/package-grep.cgi?grep=openssl

# 命令行参数

# https://www.cygwin.com/faq/faq.html#faq.setup.cli


#  安装apt-cyg 参考： https://zhuanlan.zhihu.com/p/66930502

## 必要环境
# base tar wget bzip2 gawk xz

# curl -Lo apt-cyg rawgit.com/transcode-open/apt-cyg/master/apt-cyg

CYGWIN_CMD="./setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/"
${CYGWIN_CMD}
${CYGWIN_CMD}   --packages  git
${CYGWIN_CMD}   --packages  curl
${CYGWIN_CMD}   --packages  wget
${CYGWIN_CMD}   --packages  tar
${CYGWIN_CMD}   --packages  libtool
${CYGWIN_CMD}   --packages  re2c
${CYGWIN_CMD}   --packages   bison
${CYGWIN_CMD}   --packages  gcc-g++
${CYGWIN_CMD}   --packages   autoconf
${CYGWIN_CMD}   --packages    automake
${CYGWIN_CMD}   --packages   openssl
${CYGWIN_CMD}   --packages    libpcre2-devel
${CYGWIN_CMD}   --packages   libssl-devel
${CYGWIN_CMD}   --packages    libcurl-devel
${CYGWIN_CMD}   --packages    libxml2-devel
${CYGWIN_CMD}   --packages    libxslt-devel
${CYGWIN_CMD}   --packages   libgmp-devel
${CYGWIN_CMD}   --packages    ImageMagick
${CYGWIN_CMD}   --packages    libpng-devel
${CYGWIN_CMD}   --packages   libjpeg-devel
${CYGWIN_CMD}   --packages    libfreetype-devel
${CYGWIN_CMD}   --packages   libwebp-devel
${CYGWIN_CMD}   --packages    libsqlite3-devel
${CYGWIN_CMD}   --packages   zlib-devel
${CYGWIN_CMD}   --packages   libbz2-devel
${CYGWIN_CMD}   --packages   liblz4-devel
${CYGWIN_CMD}   --packages    liblzma-devel
${CYGWIN_CMD}   --packages  libzip-devel
${CYGWIN_CMD}   --packages   libicu-devel
${CYGWIN_CMD}   --packages   libonig-devel
${CYGWIN_CMD}   --packages    libcares-devel
${CYGWIN_CMD}   --packages    libsodium-devel
${CYGWIN_CMD}   --packages   libyaml-devel
${CYGWIN_CMD}   --packages   libMagick-devel
${CYGWIN_CMD}   --packages    libzstd-devel
${CYGWIN_CMD}   --packages   libbrotli-devel
${CYGWIN_CMD}   --packages   libreadline-devel
${CYGWIN_CMD}   --packages    libintl-devel
${CYGWIN_CMD}   --packages    libpq-devel
${CYGWIN_CMD}   --packages   libssh2-devel
${CYGWIN_CMD}   --packages    libidn2-devel
${CYGWIN_CMD}   --packages     gettext-devel
${CYGWIN_CMD}   --packages     coreutils


exit 0
lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin
apt-cyg --help

# apt-cyg mirror https://mirrors.ustc.edu.cn/cygwin/

apt-cyg install wget tar libtool re2c bison gcc-g++ autoconf automake openssl libpcre2-devel libssl-devel libcurl-devel libxml2-devel libxslt-devel libgmp-devel ImageMagick libpng-devel libjpeg-devel libfreetype-devel libwebp-devel libsqlite3-devel zlib-devel libbz2-devel libreadline-devel  libintl-devel libpq-devel libssh2-devel libidn2-devel gettext-devel coreutils


exit 3




C:\cygwin\bin\bash.exe --norc --noprofile

mv C:/Users/biubiu/Downloads/setup-x86_64.exe C:/cygwin64/

# cmd 需要使用该管理员权限运行

# add alias to bash_aliases
echo "alias cygwin='C:/cygwin64/setup-x86_64.exe -q -P'" >> ~/.bash_aliases
source ~/.bash_aliases

# add bash_aliases to bashrc if missing
echo "source ~/.bash_aliases" >> ~/.profile

setup-x86_64.exe --help
setup-x86_64.exe -q -s http://mirror.internode.on.net
setup-x86_64.exe -q -s http://mirrors.ustc.edu.cn/cygwin/

C:/cygwin/setup-x86_64.exe  --no-shortcuts  --quiet-mode  --disable-buggy-antivirus   --packages wget tar libtool re2c bison gcc-g++ autoconf automake openssl

setup-x86_64.exe  --allow-unsupported-windows --no-shortcuts  --quiet-mode  --disable-buggy-antivirus  -s http://mirrors.ustc.edu.cn/cygwin/   --packages wget tar libtool re2c bison gcc-g++ autoconf automake openssl libpcre2-devel libssl-devel libcurl-devel libxml2-devel libxslt-devel libgmp-devel ImageMagick libpng-devel libjpeg-devel libfreetype-devel libwebp-devel libsqlite3-devel zlib-devel libbz2-devel libreadline-devel  libintl-devel libpq-devel libssh2-devel libidn2-devel gettext-devel coreutils
setup-x86_64.exe  --no-shortcuts  --quiet-mode  --disable-buggy-antivirus  -s http://mirrors.ustc.edu.cn/cygwin/   --packages git curl wget tar libtool re2c bison gcc-g++ autoconf automake openssl libpcre2-devel libssl-devel
setup-x86_64.exe  --no-shortcuts  --quiet-mode  --disable-buggy-antivirus  -s http://mirrors.ustc.edu.cn/cygwin/   --packages  wget
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  git
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  curl
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  wget
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  tar
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  libtool
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  re2c
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   bison
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  gcc-g++
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   autoconf
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    automake
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   openssl
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libpcre2-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libssl-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libcurl-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libxml2-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libxslt-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libgmp-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    ImageMagick
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libpng-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libjpeg-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libfreetype-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libwebp-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libsqlite3-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   zlib-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libbz2-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   liblz4-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    liblzma-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages  libzip-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libicu-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libonig-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libcares-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libsodium-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libyaml-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libMagick-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libzstd-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libbrotli-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libreadline-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libintl-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libpq-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages   libssh2-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages    libidn2-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages     gettext-devel
setup-x86_64.exe  --no-shortcuts  -q   -s http://mirrors.ustc.edu.cn/cygwin/   --packages     coreutils

