hrefliBase = 'http://href.li/?'

String::startsWith = ( comparison ) ->
	@substring( 0, comparison.length ) is comparison

isExternal = ( href ) ->
	# No relative links
	return false unless href.match /^https?:\/\//

	# Prevent changing links multiple times
	return false if href.startsWith hrefliBase

	# Nothing on the same domain
	return true unless href.startsWith location.origin

jQuery ( $ ) ->
	$( 'body' ).on 'mousedown', 'a', ->
		# Rewrite the link if it's external
		$( @ ).attr( 'href', "#{hrefliBase}#{@href}" ) if isExternal @href
