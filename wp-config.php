<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'relokia_bd' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'e)KzP0|gZP c!pQZEn1]^;FdY2vN2b22$uRLg|%E-D(r.5IS*5>{:~Qn9Au<vI8i' );
define( 'SECURE_AUTH_KEY',  '<wMxz[8vsV2;tTi[(V2gN$Mm&^!wm1kCJ3<A{n8.;c&e9<Z;ji|3VT*5}x^z5W!%' );
define( 'LOGGED_IN_KEY',    '(qjo,to$P3%dnA`*WQ0iI2#!k]ij<N*KD6Av1O5io(l-#$pqgv1k<yu+m!5n|)^r' );
define( 'NONCE_KEY',        'eF9kT%@KyWqi5&(H=ZMlkFGn,Au6=/LO&1xHFkf|gf?^zsn_&nXtc}bD78]SpJZZ' );
define( 'AUTH_SALT',        'U0U2[}wox]ETQX`_c8]I>N;(>!WdBgw8{@NW+YeAb <DcsYAI.5x4ePSFr|VqRor' );
define( 'SECURE_AUTH_SALT', 'cZABDP<X.aSnLM^fa|.U)iW6K k|-]}.q]Veu-.f^^7&qzCpNSd<{!XuE!7SX}sP' );
define( 'LOGGED_IN_SALT',   'e)e}F!=vQ.Iz+zi:Fu10R*>hwkW$L+,h~!LmUpaH9ic9HcYJ/l96gFyl5Sg?^8:5' );
define( 'NONCE_SALT',       '!L*}1 hWXNWODpHI=q-RSa6brm&<{Z4dM8,lLJ]|1o?L2zb>h_aD~}y04)eoySF1' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', true );
define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false); 

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
