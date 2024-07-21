<?php

use SwooleCli\Preprocessor;
use SwooleCli\Extension;

return function (Preprocessor $p) {
    $php_version = BUILD_PHP_VERSION;
    $p->addExtension(
        (new Extension('pgsql'))
            ->withHomePage('https://www.php.net/pgsql')
            ->withLicense('https://github.com/php/php-src/blob/master/LICENSE', Extension::LICENSE_PHP)
            ->withOptions('--with-pgsql=' . PGSQL_PREFIX)
            ->withFile('pgsql-' . $php_version . '.tgz')
            ->withDownloadScript(
                'pgsql',
                <<<EOF
                git clone -b php-{$php_version} --depth=1 https://github.com/php/php-src.git
                cd php-src/ext/
EOF
            )
            ->withDependentLibraries('pgsql')
    );
};
