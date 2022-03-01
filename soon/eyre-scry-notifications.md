# Basic HTTP Scrying

An HTTP client can send a scry request as a specially formatted HTTP GET request.  An Urbit server can run this as an Arvo `+peek` instead of injecting a stateful Arvo event.



# Eyre Scry Notifications Protocol

A layer on top of basic HTTP scrying, inspired by the remote scry protocol's `%bide` notifications system, should be an HTTP-based scry notification protocol.  This protocol will allow a web client to request a scry path that does not yet have a value bound to it, to which the server will respond once the path has a value grown at it.

Since HTTP, unlike UDP, is connection-oriented, a request to be notified on a path should die when the connection dies, releasing the server from its obligation to notify the client and allowing the server to reclaim any resources associated with the notification request.

This protocol will use HTTP long-polling to keep the request alive until the response is available.  This means the requester (usually a browser client) should set an infinite timeout on its HTTP request, and it should generally retry immediately if the connection dies.

The server needs to be able to:
- distinguish a scry request from other HTTP requests
- learn that a scry blocked
- inject an event into Arvo asking to be notified when the scry path has been grown
- store the set of HTTP requests that should be responded to with the scry result
- delete pending requests upon response, or if the connection dies

NOTE: Long-polling has an issue with multiplexing connections, because browsers are limited to six.  Possible solutions include:
- don't solve; most applications could probably be written with one subscription -- not a permanent solution
- use HTTP/2 -- requires SSL everywhere, but that is probably surmountable

Worse options, since requests could not use HTTP caching:
- use server-side events (SSE)
- use websockets
