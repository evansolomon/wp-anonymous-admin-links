isExternal = ( href ) ->
	# No relative links
	return false unless href.substring( 0, 4 ) is 'http'

	# Prevent changing links multiple times
	return false if href.substring( 0, 16 ) is 'http://href.li/?'

	# Nothing on the same domain
	href.substring( 0, location.origin.length ) isnt location.origin

jQuery ( $ ) ->
	$( 'body' ).on 'mousedown', 'a', ( e ) ->
		# Leave internal links alone
		return unless isExternal @href

		# Rewrite the link
		$( @ ).attr 'href', "http://href.li/?#{@href}"
