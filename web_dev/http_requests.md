- What are some common HTTP status codes?

1xx - Informational
	Request received, continuing process.

2xx - Success
	Indicates the action requested was received, understood, accepted, and processed successfully

3xx - Redirection
	Additonal steps are required to complete the request

4xx - Client Error
	Situations where the client seems to have erred. Should contain a code that explains the situation.

5xx - Server Error
	The server failed to fullfill an apparently valid request

5 Most Common
1. 404 Not Found
	The requested resource is no longer there or is not found. 

2. 403 Forbidden
	Access to the research is forbidden to the requestor. Possibly because a machine isn't whitelisted.

3. 500 Internal Server Error
	A catch all 5xx error. Doesn't specify the actual problem

4. 503 Service Unavailable
	The web server isn't currently available.

5. 504 Gateway Timeout
	The request timed out before receiving a response.


- What is the difference between a GET request and a POST request? When might each be used?
	A GET request requests data from a specified resource
	A POST request submits data to be processed to a specified resource

- Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
	A small piece of data sent by the website to be stored in the users browser. It can contain many things, one being signed in status. Cookies are used to make your browsing experience quicker and more enjoyable.