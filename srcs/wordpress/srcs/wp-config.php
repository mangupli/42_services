<?php

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'admin' );

/** MySQL database password */
define( 'DB_PASSWORD', 'password' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-svc:3306' );

define( 'WP_HOME', 'http://192.168.99.100:5050' );
define( 'WP_SITEURL', 'http://192.168.99.100:5050');


/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         '|UM,3%kA,]M%!.lBYK]f#,KI?AMt~UA4_,`evf|KyjK+gQ_;=NP+lo)>k@Xw~!ZD');
define('SECURE_AUTH_KEY',  't5{Z5qm&g[U5SC6tK)n*b-Rh?q^~zE|]CwPb~H?gU>5(R9i!q5.PJw3q5:n$PuGY');
define('LOGGED_IN_KEY',    '@sLrKt>*Q]Ek|vaAf]x3pI+ecQgI[59a55UWb _=$N3FT+%0=J 7{?iadI}(+Gp+');
define('NONCE_KEY',        'YDm:B5(2>@6OB vUUR|TpIPO--#Qz.1jAu|%?|?e|Gh`%qzvv*~~ |j5@J>z7%89');
define('AUTH_SALT',        'X|PKwCbTg`aak]&g|4 C[GQE@@~|L=5I()Z{jcN)]x-Pk[HD$d-<Vkoq t5+f9&+');
define('SECURE_AUTH_SALT', '~Tf=E^xU9 AW?ztWqD`,eF)!,]@)U9b,L3Qm-HxapH46+!qe,pmh8}HUWjj9.cwv');
define('LOGGED_IN_SALT',   '|L}6z++$@NV~6`[pWE,KH|Co9Ve/NxK?:t6|+N$Le{GwSTN8d&8G?[I_*u 4BKbQ');
define('NONCE_SALT',       'e$x8mNi_:N&SSLAX+eby8j-jFj}bf][Q%Y(y60rsZ}he;qu#`>J$[396{IXX4n._');

$table_prefix = 'wp_';
define( 'WP_DEBUG', true );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );
?>
