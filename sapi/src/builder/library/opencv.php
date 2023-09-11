<?php

use SwooleCli\Library;
use SwooleCli\Preprocessor;

return function (Preprocessor $p) {
    $opencv_prefix = OPENCV_PREFIX;
    $ffmpeg_prefix = FFMPEG_PREFIX;
    $zlib_prefix = ZLIB_PREFIX;
    $libzstd_prefix = LIBZSTD_PREFIX;
    $liblz4_prefix = LIBLZ4_PREFIX;
    $liblzma_prefix = LIBLZMA_PREFIX;
    $jpeg_prefix = JPEG_PREFIX;
    $libtiff_prefix = LIBTIFF_PREFIX;
    $png_prefix = PNG_PREFIX;
    $gmp_prefix = GMP_PREFIX;
    $libwebp_prefix = WEBP_PREFIX;
    $freetype_prefix = FREETYPE_PREFIX;
    $gflags_prefix = GFLAGS_PREFIX;

    $workDir = $p->getWorkDir();
    $buildDir = $p->getBuildDir();
    $lib = new Library('opencv');
    $lib->withHomePage('https://opencv.org/')
        ->withLicense('https://github.com/opencv/opencv/blob/4.x/LICENSE', Library::LICENSE_APACHE2)
        ->withUrl('https://github.com/opencv/opencv/archive/refs/tags/4.7.0.tar.gz')
        ->withManual('https://github.com/opencv/opencv.git')
        ->withFile('opencv-v5.x.tar.gz')
        ->withDownloadScript(
            'opencv',
            <<<EOF
        git clone -b 5.x --depth 1 --progress  https://github.com/opencv/opencv.git
        cd opencv
        git clone -b 5.x --depth 1 --progress  https://github.com/opencv/opencv_contrib.git
        cd ..
EOF
        )
        ->withPrefix($opencv_prefix)
        ->withCleanBuildDirectory()
        ->withCleanPreInstallDirectory($opencv_prefix)
        ->withPreInstallCommand(
            'debian',
            <<<EOF
            apt install ccache python3-dev
            apt install -y python3-numpy
EOF
        )
        ->withPreInstallCommand(
            'alpine',
            <<<EOF
        apk add ccache python3-dev
        pip3 install numpy setuptools utils-misc  gapi mat_wrapper utils
EOF
        )
        ->withBuildLibraryHttpProxy(true)
        ->withBuildLibraryCached(false)
        ->withBuildScript(
            <<<EOF

        mkdir -p build
        cd  build

        cmake .. \
        -G Ninja \
        -DCMAKE_INSTALL_PREFIX={$opencv_prefix} \
        -DCMAKE_POLICY_DEFAULT_CMP0074=NEW \
        -DOPENCV_EXTRA_MODULES_PATH="../opencv_contrib/modules" \
        -DCMAKE_BUILD_TYPE=Release \
        -DBUILD_STATIC_LIBS=ON \
        -DBUILD_SHARED_LIBS=OFF \
        -DWITH_FFMPEG=ON \
        -DFFMPEG_ROOT={$ffmpeg_prefix} \
        -DZLIB_ROOT={$zlib_prefix} \
        -Dfreetype2_ROOT={$freetype_prefix} \
        -DOPENCV_GENERATE_PKGCONFIG=ON \
        -DBUILD_TESTS=OFF \
        -DBUILD_PERF_TESTS=OFF \
        -DBUILD_EXAMPLES=ON \
        -DBUILD_opencv_apps=ON \
        -DOpenCV_STATIC=ON \
        -DCMAKE_PREFIX_PATH="{$jpeg_prefix};{$png_prefix};{$libtiff_prefix};{$gmp_prefix};{$libwebp_prefix};{$liblzma_prefix};{$freetype_prefix};{$gflags_prefix};{$libzstd_prefix};{$liblz4_prefix}" \
        -DLINK_LIBRARIES="{$liblzma_prefix}/lib/liblzma.a {$libzstd_prefix}/lib/libzstd.a {$liblz4_prefix}/lib/liblz4.a " \
        -DTARGET_LINK_LIBRARIES="lzma  zstd  lz4 "


        # -DCMAKE_EXE_LINKER_FLAGS="-L{$liblzma_prefix}/lib/ -L{$libzstd_prefix}/lib/ -L{$liblz4_prefix}/lib/ -llzma  -lzstd  -llz4 "

        # -DLINK_DIRECTORIES="{$liblzma_prefix}/lib/:{$libzstd_prefix}/lib/:{$liblz4_prefix}/lib/"

         # -DTARGET_LINK_LIBRARIES="-llzma  -lzstd  -llz4 "
         #
         # -DLINK_LIBRARIES="lzma  zstd  lz4"

        # -DJPEG_ROOT={$jpeg_prefix} \
        # OpenJPEG
        # -DPNG_ROOT={$png_prefix} \
        # -DTIFF_ROOT={$libtiff_prefix} \

        ninja
        ninja install
EOF
        )
        ->withScriptAfterInstall(
            <<<EOF
            LINE_NUMBER=$(grep -n 'Libs.private:' {$opencv_prefix}/lib/pkgconfig/opencv5.pc |cut -d ':' -f 1)
            sed -i.save "\${LINE_NUMBER} s/-lIconv::Iconv//" {$opencv_prefix}/lib/pkgconfig/opencv5.pc
EOF
        )
        ->withPkgName('opencv5')
        ->withDependentLibraries(
            'ffmpeg',
            'zlib',
            'libjpeg',
            'libwebp',
            'libpng',
            'freetype',
            'libtiff',
            "gmp",
            'liblzma',
            'gflags'
        ) // openjpeg openEXR HDR   'vtk'
        ->withBinPath($opencv_prefix . '/bin/')
    ;

    $p->addLibrary($lib);
};

/*
 * https://github.com/opencv/ade.git
 */
