=== Anonymous Admin Links ===
Contributors: evansolomon
Tags: wp-admin, link, referrer
Requires at least: 3.4
Tested up to: 3.5.1
Stable tag: 1.03

Hide the referrer for external links in wp-admin using href.li

== Description ==

When you click links, your browser sends referrer information to the site you land on.  This is how you get things like referrer counts in Google Analytics.  Sometimes, though, you don't want people to know where you clicked their links from.  By default, this plugin will hide your referrers for links from `wp-admin`.  You can also use it to hide links on the front end of your site by making a plugin along the lines of this.

    add_action( 'wp_enqueue_scripts', 'es_anonymous_admin_links' );

== Installation ==

This plugin doesn't have any options.  Install it, activate it, and it's on.

== Changelog ==

= 1.0 =
* Genesis.
