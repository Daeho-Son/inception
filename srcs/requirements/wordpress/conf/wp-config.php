<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// https://github.com/rhubarbgroup/redis-cache/wiki/Connection-Parameters

// ** Redis settings - You can get this info from your web host ** //

// /** Redis hostname */
// define( 'WP_REDIS_HOST', getenv('REDIS_HOST') );

// /** Redis port */
// define( 'WP_REDIS_PORT', getenv('REDIS_PORT') );

// /** The timeout seconds for connection on redis */
// define( 'WP_REDIS_TIMEOUT', getenv('REDIS_CONNECTION_TIMEOUT_SECONDS') );

// /** The timeout seconds for read on redis */
// define( 'WP_REDIS_READ_TIMEOUT', getenv('REDIS_READ_TIMEOUT_SECONDS') );

// /** The logical database index on redis */
// define( 'WP_REDIS_DATABASE', getenv('REDIS_DB_INDEX') );

/** True if do caching */
define( 'WP_CACHE', true );

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('MYSQL_DATABASE') );

/** MySQL database username */
define( 'DB_USER', getenv('MYSQL_USER') );

/** MySQL database password */
define( 'DB_PASSWORD', getenv('MYSQL_PASSWORD') );

/** MySQL hostname */
define( 'DB_HOST', getenv('MYSQL_HOST') );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */

/**#@-*/
/* insert keys here */
define('AUTH_KEY',         'c?I8R*?/pKd->5x-$^{(.-wz//{uyT=~r_7(puu3TT$UK@guC-F9bYSYo?{i&N{^');
define('SECURE_AUTH_KEY',  '?jZ{GWG^t`m.~8GqXS9Wu{=J%CJmu7j;Rqq:N,=tRme!2{<609l.?n/@~`=K.Fnf');
define('LOGGED_IN_KEY',    'x.VAp^H`GhcNM<Kns|SH9-l/,|MD~[$:$S&P]ii?-eM}W a:K{iF<3]:Z-^8C7NU');
define('NONCE_KEY',        '$RQ}#4GJl:}4s|Hqv<p|P-P+z+nT8G78VC-h#c^G%16,?A/?])CnK{ghjp5Ryca`');
define('AUTH_SALT',        'A;2j}~uT9XN:UbRBK7ga/Ta*Dbwu3w<`i5e-+(17GV[JGf:-*`r`vWx%pmQ~^RDK');
define('SECURE_AUTH_SALT', '+9:G<RlM>-n=&+Te_GVm3{ZS`k|=767$T+@V[mICMFCa<L=Z}eoYQ%X;va,./[3M');
define('LOGGED_IN_SALT',   '<(9VLrlV 89l^R#}y-^s~XU-a_5Z+E{fKUL~{)!|+r(X^V]zOTJ9-Jla<ssRzOp8');
define('NONCE_SALT',       '3=!wYd;=#(wmA%3eaZJ*Er:+$`V`33_vhwJbPnMSJd5)w>+?!W0Sq8(U&$)Lg>*)');
/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';