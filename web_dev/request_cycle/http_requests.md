What are some common HTTP status codes?
Status codes fall into classes:
informational (1xx)
success (2xx)
redirection (3xx)
client errors (4xx)
server errors (5xx)

200 OK: the request has succeeded.
The information returned with the response is dependent on the method used in the request.

300 Multiple Choices: the requested resource has different choices and cannot be resolved into one. 
Example would be there may be several index.html pages depending on which language is wanted (such as Dutch).

301 Moved Permanently: requested resourse has been assigned a new permanent URL and any future references to this resource should use one of the returned URIs. (A Uniform Resource Identifier (URI) is a string of characters used to identify a resource.)

302 Found: the requested resource resides temporarily under a different URI. Since the redirection might be altered on occasion, the client should continue to use the Request-URI for future requests.

307 Temporary Redirect: the requested resource resides temporarily under a different URI. Since the redirection may be altered on occasion, the client should continue to use the Request-URI for future requests. This response is only cacheable if indicated by a Cache-Control or Expires header field.

400 Bad Request: the request could not be understood by the server due to malformed syntax. The client should not repeat the request without modifications.

401 Unauthorized: the request requires user authentication. The response must include a WWW-Authenticate header field containing a challenge applicable to the requested resource.

403 Forbidden: access to that resource is forbidden. The server understood the request, but is refusing to fulfill it. Authorization will not help and the request should not be repeated. 
reasons why:
- server is maintaining a list of whitelist of machines that can access that system and the user's machine not being on it. 
- the client's certificate is no longer valid is  missing. (A client certificate is a type of digital certificate that is used by client systems to make authenticated requests to a remote server.) 
- possibility of wrong permissions associated to files.

404 Not Found: requested resource is no longer available. The server has not found anything matching the Request-URI. No indication is given of whether the condition is temporary or permanent.

410 Gone: the requested resource is no longer available at the server and no forwarding address is known. This condition is expected to be considered permanent. Clients with link editing capabilities should delete references to the Request-URI after user approval. If the server does not know, or has no facility to determine, whether or not the condition is permanent, the status code 404 Not Found should be used instead. This response is cacheable unless indicated otherwise.

500 Internal Server Error: server-side error code, and 500 error is the catchall. 500 status code is returned when none of the other 500 error codes make sense.

501 Not Implemented: the server does not support the functionality required to fulfill the request. This is the appropriate response when the server does not recognize the request method and is not capable of supporting it for any resource.

503 Service Unavailable: the web server isn't available. This is usually a temporary condition. Since you are getting a return code, part of the server is working. The web people have made the server return this code until they fix the problem. If you do not get service back soon, contact your web host as they would know the best. Some web hosts have server status pages you can check. Retrying the request could work or could return another 500 error.

reasons why:
- the web service might have just restarted and is in the middle of initialization. 
- it might have crashed (stops functioning properly). 
- it might be overloaded and cannot handle any more concurrent requests.
- it might be down for maintenance. 
- it might be currently maliciously being attacked. 
- server may be forbidden to return the requested document. 

504 Gateway Timeout: one server did not receive a timely response from another server that it was accessing while attempting to load the web page or fill another request by the browser. As with the other 5xx-level errors, just retrying the request could result in a successful response.

reasons why:
- a proxy server needs to communicate with a secondary web servce, such as an apache service and access to that server timed out. (A proxy server is a server that acts as an intermediary for requests from clients seeking resources from other servers. An apache server is a free and open-source cross-platform web server software, released under the terms of Apache License 2.0.) 
- there could be an DNS issue. (The Domain Name System 'DNS' provides visitors access to websites using domain names rather than IP addresses.) 
- a network device might be down or the other machine could just be overly busy and unable to process the request in a timely fashion. This can only happen in a setup where a caching or proxy server is directly serving the webpage and the actual webserver behind it is unreachable. (Caching is the process of storing data in a cache. A cache is a temporary storage area. For example, the files you automatically request by looking at a Web page are stored on your hard disk in a cache subdirectory under the directory for your browser.) 

550 Permission Denied: server is stating the account you have currently logged in as does not have permission to perform the action you are attempting. You may be trying to upload to the wrong directory or trying to delete a file.

----------------------------------------------------------------------
What is the difference between a GET request and a POST request? When might each be used?
GET requests data from a specified resource and POST requests submits data to be processed to a specified resource. The data for post requests are included in the body of the request.  
GET requests: 
- can be cached
- remain in the browser history
- can be bookmarked
- should never be used when dealing with sensitive data
- have length restrictions
- should be used only to retrieve data

POST requests:
- may result in the creation of a new resource or the updates of existing resources or both
- are never cached
- do not remain in the browser history
- cannot be bookmarked
- have no restrictions on data length

GET should not be used for operations that cause side-effects, such as using it for taking actions in web applications. One reason for this is that GET may be used arbitrarily by robots or crawlers, which should not need to consider the side effects that a request should cause.

To put simply, GET is used to retrieve remote data, and POST is used to insert/update remote data. 

-----------------------------------------------------------------------
Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
An HTTP cookie (also called web cookie, Internet cookie, browser cookie, or simply cookie) is a small piece of data (text file of 255 characters or less) sent from a website and stored on the user's computer by the user's web browser while the user is browsing.

The main purpose of a cookie is to identify users and possibly prepare customized Web pages or to save site login information for you.

When you enter a Web site using cookies, you may be asked to fill out a form providing personal information; like your name, e-mail address, and interests. This information is packaged into a cookie and sent to your Web browser, which then stores the information for later use. The next time you go to the same Web site, your browser will send the cookie to the Web server. The message is sent back to the server each time the browser requests a page from the server.

A Web server has no memory so the hosted Web site you are visiting transfers a cookie file of the browser on your computer's hard disk so that the Web site can remember who you are and your preferences. This message exchange allows the Web server to use this information to present you with customized Web pages. So, for example, instead of seeing just a generic welcome page you might see a welcome page with your name on it.

Types of cookies
Session cookie: a cookie that is erased when you close the Web browser. The session cookie is stored in temporary memory and is not retained after the browser is closed. Session cookies do not collect information from your computer. They typically will store information in the form of a session identification that does not personally identify the user.

Persisent cookie: a stored cookie, a cookie that is stored on your hard drive until it expires (persistent cookies are set with expiration dates) or until you delete the cookie. Persistent cookies are used to collect identifying information about the user, such as Web surfing behavior or user preferences for a specific Web site.

Cookies can come from multiple sources: 
First party cookies: sent directly by the visited site and they are usually identified by the site’s domain name. 

Third-party cookies: come from those with an interest in the site such as advertisers and ad servers. They are difficult for the average user to identify because they can be connected to any banner ad on a site. These cookies allow advertisers and ad servers to alternate the ads sent to a specific computer and to track how often an ad has been viewed and by whom.