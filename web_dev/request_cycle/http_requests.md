# 1 

## Create file

# 2

## What are some common HTTP status codes?

  * 200 OK
    * Successful response from server
  * 304 Not Modified
    * Conditional HEAD or GET was received, evaluated to false
      * Client already has a valid representation stored of the target resource; server redirects client to make use of that
  * 404 Not Found
    * The requested resource is no longer available
  * 403 Forbidden
    * Access to the resource is forbidden
      * Possibly forbidden by server maintaining a whitelist of clients that can access the system; or 
      * Client's certificate is invalid or missing; or
      * Wrong permissions associated with the files
  * 504 Gateway Timeout
    * A proxy server needs to communicate with secondary web server; access timed out
  * 503 Service Unavailable
    * Server might be initializing or overloaded
  * 500 Internal Server Error
    * 5xx are server-side errors; 500 is the catchall

# 3

## What is the difference between a GET request and a POST request? When might each be used?

GET request is idempotent, which means it should not have side effects if called more than once. It is used for viewing something, like a search page.

POST request may have side effects; it's used for client request to change things, as opposed to just viewing them. Forms to change account information or passwords might use POST.

# 4

## **Optional bonus question:** What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

A cookie is a piece of data that a server sends to a client, which may store it and send it back at the next request. 3 primary purposes of cookies:

  * Session management (user logins, shopping carts)
  * Personalization (user preferences)
  * Tracking (analyzing user behavior)

Servers send cookies upon receiving the HTTP request.