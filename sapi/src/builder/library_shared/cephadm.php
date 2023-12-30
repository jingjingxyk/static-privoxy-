<?php

use SwooleCli\Library;
use SwooleCli\Preprocessor;

return function (Preprocessor $p) {
    $ceph_prefix = CEPH_PREFIX;
    $lib = new Library('cephadm');
    $lib->withHomePage('https://ceph.io/')
        ->withLicense('https://github.com/ceph/ceph/blob/main/COPYING-LGPL3', Library::LICENSE_LGPL)
        ->withManual('https://github.com/ceph/ceph')
        ->withAutoUpdateFile()
        ->withFile('ceph-latest.tar.gz')
        ->withDownloadScript(
            'ceph',
            <<<EOF
                # git clone -b main  --depth=1 --recursive https://github.com/ceph/ceph.git
                # for docs
                git clone -b main  --depth=1 --recurse-submodules https://github.com/ceph/ceph.git
EOF
        )
        ->withPrefix($ceph_prefix)
        ->withInstallCached(false)
        //->withBuildCached(false)
        ->withSystemOriginEnvPath()
        ->withBuildLibraryHttpProxy()
        ->withSystemHttpProxy('ubuntu')
        ->withPreInstallCommand(
            'ubuntu',
            <<<EOF
        apt install -y python3-venv python3-pip
        apt install -y doxygen ditaa libxslt1-dev graphviz ant cython3
EOF
        )
        ->withBuildScript(
            <<<EOF

            OS_RELEASE=$(cat /etc/os-release | grep "^ID=" | sed 's/ID=//g')

            if [ "\${OS_RELEASE}" != "ubuntu" ] ; then
                echo 'no support OS'
                exit 3
            fi
            # 仅支持 ubuntu

            bash ./install-deps.sh

            bash src/cephadm/build.sh cephadm


EOF
        )
        ->disableDefaultLdflags()
        ->disableDefaultPkgConfig()
    ;

    $p->addLibrary($lib);
};
