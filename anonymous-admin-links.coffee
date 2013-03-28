hrefliBase = 'http://href.li/?'

String::startsWith = ( comparison ) ->
	@substring( 0, comparison.length ) is comparison

isExternal = ( href ) ->
	# No relative links
	return false unless href.match /^https?:\/\//

	# Prevent changing links multiple times
	return false if href.startsWith hrefliBase

	# Nothing on the same domain
	return false if href.startsWith location.origin

	# If we got here, the link is external
	true

jQuery ( $ ) ->
	$( 'body' ).on 'mousedown', 'a', ->
		originalLink = @href

		# Only rewrite the link if it's external
		return unless isExternal originalLink

		$this = $ @
		$this.attr 'href', "#{hrefliBase}#{originalLink}"

		# Return the original link after navigation
		setTimeout ->
			$this.attr 'href', originalLink
		, 1
