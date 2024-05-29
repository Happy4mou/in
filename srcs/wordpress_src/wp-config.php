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
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mydb' );

/** Database username */
define( 'DB_USER', 'myuser' );

/** Database password */
define( 'DB_PASSWORD', '123' );

/** Database hostname */
define( 'DB_HOST', 'mydb' );

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
define( 'AUTH_KEY',          '$*f7_u_cQv28(z0;_sXp2%`c2IWWJ?%gpy!IFF%!Vlv}>8&,dRT~$OPTF`a0n P)' );
define( 'SECURE_AUTH_KEY',   '#_I!qZnXq`!,i9gE(Y}Qod}>;?[>-Xd@=t>}!,HK/;[N+`#EOlqSO#HM%.x({IBu' );
define( 'LOGGED_IN_KEY',     'qV+PJ!-8p$Bj/Qi+X^r<sTQH5mmq%.O0)q~Lgf0@KZ3;Ew-P]|Q*Io$Povhea@Kk' );
define( 'NONCE_KEY',         '5M[M_4I,u4Of+>~]`]AJX|2V`d):jxUl6kibZY@s|-lLqlpXYTfG:8=MO_YLGO#I' );
define( 'AUTH_SALT',         'b7BI}kI3M(ZBaqm3yGJ5&-iU-{k//K,7I8s5Q[J)ADk#HSwd,/*ED,vR> ?9*&?:' );
define( 'SECURE_AUTH_SALT',  '6cy&!x!je|v_1u]{=TS{c%+vH_EZzTEaSxityU]Tc?n-|TaPvFZs%(1CktS@j!8T' );
define( 'LOGGED_IN_SALT',    'f2A-V+*YaKv5iqoS?qXp(Vq+&7Rm.s+MzpvZGrjkO}so8DW:C-Y @0e$K,xg)fhQ' );
define( 'NONCE_SALT',        '-Qiu1MS{&V0Pt8Y]t>!}Soac{>>*_|RDdaH[0$En,oJ1.4S:3^c09%aoNeP)k% t' );
define( 'WP_CACHE_KEY_SALT', 'GLE[1WAOWBwak*,ej{T;P.I[X214{}Tc)Q#(v6dBr[Pu6rph[_G:I71f*VbOajVl' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
