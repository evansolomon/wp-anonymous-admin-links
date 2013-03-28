<?php

/*
Plugin Name: Anonymous Admin Links
Description: Hide the referrer for external links in the WordPress admin
Version: 1.03
Author: Evan Solomon
Author URI: http://evansolomon.me
*/

function es_anonymous_admin_links() {
	wp_enqueue_script( 'anonymous-admin-links', plugins_url( 'anonymous-admin-links.js', __FILE__ ), array( 'jquery' ) );
}
add_action( 'admin_enqueue_scripts', 'es_anonymous_admin_links' );
