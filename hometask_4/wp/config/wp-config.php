<?php
define( 'DB_NAME', 'wordpress' );

define( 'DB_USER', 'wordpress' );

define( 'DB_PASSWORD', '123456' );

define( 'DB_HOST', 'mysql_server' );

define( 'DB_CHARSET', 'utf8mb4' );

define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         'yQ`wyr)%q^MRT*A=(OnN_tTLP>+/t)AqrfE-)G3utxhJDQ<]ZgGVbO7?y8z>.)Eb' );
define( 'SECURE_AUTH_KEY',  'm!fWq/^v3}&G(KPMOH}H5#IT!y@oQy:.ExN)2IgW%>[BWB;D>!l.B3JMs+uvL!7R' );
define( 'LOGGED_IN_KEY',    'MW-p8pI@cT]8MZav&g~Y<;&V)|k7mR!t}U={t@13,tz;4Pu=xBSy Xj[5W`gnDw#' );
define( 'NONCE_KEY',        ')14 EYvf#X+r2n]x8X=]C}R-hPa12Ai9=w5*JmSe=:%8%`8Xvn o@J]9ex]4K~rM' );
define( 'AUTH_SALT',        '0~4{>k%+,)i)`0r:3lQC!US0^J/y((o?rGggfU3eM/@vjLtWt%49oBv{WR4rR<WS' );
define( 'SECURE_AUTH_SALT', '#roqO][_q,*JpA,(NT7R0v}G4y0z51-29uY61&e$,z =Cc/=MyI}N;P~%unwL1Oe' );
define( 'LOGGED_IN_SALT',   'Jrf`qH[c=$D|Sv#?0Trm#P{kJ6I _+vNs]4i;}$`pPKUhkpZDa(:eOvccksbb8(V' );
define( 'NONCE_SALT',       'H<nEcy|+El$:;jd@*T1%|E.HIO^|8MLq$W4`=9e99NpQ8`4;j>A|E|!qVDeHO%%4' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

require_once( ABSPATH . 'wp-settings.php' );


