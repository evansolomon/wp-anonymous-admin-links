String::startsWith = ( comparison ) ->
	@substring( 0, comparison.length ) is comparison

isExternal = ( href ) ->
	# No relative links
	return false unless href.startsWith 'http'

	# Prevent changing links multiple times
	return false if href.startsWith 'http://href.li/?'

	# Nothing on the same domain
	return true unless href.startsWith location.origin

jQuery ( $ ) ->
	$( 'body' ).on 'mousedown', 'a', ->
		# Rewrite the link if it's external
		$( @ ).attr( 'href', "http://href.li/?#{@href}" ) if isExternal @href
