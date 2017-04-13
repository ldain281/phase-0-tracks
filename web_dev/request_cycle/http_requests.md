9.1 Release0

1. What are some common HTTP status codes? 

Five most common from Google via http://royal.pingdom.com/2009/05/06/the-5-most-common-http-errors-according-to-google/

401 (UNAUTHORIZED) when a website visitor tries to access a restricted web page (usually because of a failed login)

400 (BAD REQUEST)
web server telling you that the application you are using (e.g. your web browser) accessed it incorrectly or that the request was somehow corrupted on the way.

403 (FORBIDDEN)
Similar to the 401 error, in this case no login opportunity was available. Can happen if you try to access a (forbidden) website directory.

404 (NOT FOUND)
When you try to access a resource on a web server (usually a web page) that doesn’t exist. Could a broken link, a mistyped URL, or the requested page was moved or deleted.

500 (INTERNAL SERVER ERROR)
General-purpose error message when a web server encounters internal error. For example, the web server could be overloaded and therefore unable to handle requests properly.

2. What is the difference between a GET request and a POST request? When might each be used?

GET - Requests data from a specified resource
Used to retreive user data, but not for applications that cause side-effects
* can be cached, remain in browser history and can be bookmarked
* DO NOT use with sensitive data
* can have length restrictions
* used only to retrieve data

POST - Submits data to be processed to a specified resource
Used for sensitive data such as from web forms
* never cached, do not remain in the browser history and cannot be bookmarked
* no data length restrictions

3. What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
A piece of data sent from a website and stored on the user's computer by the user's web browser. They allow websites to remember stateful information (e.g shopping cart) or to record browsing activity. Cookies are passes as HTTP headers in the request (client to server) and respsonse (server to client)