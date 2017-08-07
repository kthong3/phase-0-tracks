release 0: make a plan
- find basic information / importance of JQuery
- cheatsheets, if any
- find what it is mainly used for
- find how and why it makes JS better
- find examples of how it is used properly / best practices

release 1: study up
basic information:
- jQuery simplifies the HTML's client-side scripting, thus simplifying Web 2.0 applications development.
- It is not a framework. A framework is something that usually forces a certain way of implementing a solution, whereas jQuery is just a tool to make implementing what you want to do easier, jQuery is just a single library.

importance of jQuery: 
- It is a compact, swift and feature rich JavaScript library. It makes things like HTML document traversal and manipulation, event handling, animation, and Ajax much simpler with an easy-to-use API that runs across large number of browsers. (Ajax is a client-side script that communicates to and from a server/database without the need for a postback or a complete page refresh. The best definition for Ajax is “the method of exchanging data with a server, and updating parts of a web page – without reloading the entire page.”)

mainly used for / how & why it makes JS better:
- It helps to improve the performance of the application
- It helps to develop most browser compatible web page
- It helps to implement UI related critical functionality without writing hundreds of lines of codes
- It is extensible, jQuery can be extended to implement customized behavior
- No need to learn fresh new syntaxes to use jQuery, knowing simple JavaScript syntax is enough
- Simple and cleaner code, no need to write several lines of codes to achieve complex functionality

best practices:
- It's important to remember that most methods will return the jQuery object. This is extremely helpful, and allows for the chaining functionality that we use so often.
- Knowing that the jQuery object is always returned, we can use this to remove superfluous code at times. 

- find method: as long as your selectors aren't ridiculously poor, jQuery does a fantastic job of optimizing them as best as possible, and you generally don't need to worry too much about them. One such solution is to use the find() method, when possible. The key is stray away from forcing jQuery to use its Sizzle engine, if it's not necessary. Certainly, there will be times when this isn't possible -- and that's okay; but, if you don't require the extra overhead, don't go looking for it.

- Lazy load scripts when needed
- Avoid $( window ).load() if your script doesn’t need any sub-resources of the page
- Use detach to remove elements from DOM that needed to be changed.
	“Reflow” is a term that refers to layout changes in a webpage, it’s when the browser rearranges a page’s elements to accommodate a new element, adjust to structural changes of an element, fill the gap left by an element removed , or some other action that needs a layout change in the page. reflow is an expensive browser process.

	We can reduce the no. of reflows caused by structural changes to an element by performing the changes on it after taking it out of the page flow and putting it back when it’s done. If you’re adding multiple rows to a table one by one it’ll cause a lot of reflows. So it’s better to take the table out the DOM tree, add the rows to it and put it back to the DOM; this will reduce reflows.

	jQuery’s detach() lets us remove an element from the page, it’s different from remove() because it’ll save the data associated with the element for when it needs to be added to the page later. A detached element can then be put back into the page when it has been modified.
- Use css() to set height or width instead of height() and width()
- Don’t access layout properties unnecessarily
- Make use of caching where you can
- One way you can be sure that you’re using the most effective jQuery code for your need is to wait till you’ve actually run your code and noticed if there is any performance issue or not. If there is, use the performance and debugger tools to detect the root of the issue.
- Remember that methods return the jQuery object
- Use the find() method when possible ss long as your selectors aren't ridiculously poor. The key is stray away from forcing jQuery to use its Sizzle engine, if it's not necessary.
	Sizzle is a brilliant mass of code that I may never understand. However, in a sentence, it first takes your selector and turns it into an "array" composed of each component of your selector.
-  Don't Abuse $(this): If our only need of the jQuery object is to access the anchor tag's id attribute, this is wasteful. Better to stick with "raw" JavaScript.
- Keep your Code Safe: If developing code for distribution, it's always important to compensate for any possible name clashing. What would happen if some script, imported after yours, also had a $ function? Dangerous things. The answer is to either call jQuery's noConflict(), or to store code within a self-invoking anonymous function, and then pass jQuery to it.
- jQuery is just JavaScript. Don't assume that it has the capacity to compensate for bad coding. Just as we must optimize things such as JavaScript for statements, the same is true for jQuery's each method. There are multiple ways to accomplish simple tasks and each have their own performance benefits from browser to browser.
- AJAX Methods: most of them are simply helper methods, which route directly to $.ajax.
	get
	getJSON
	post
	ajax
You can just as well use the $.ajax method directly and exclusively for all your AJAX requests. The other methods are simply helper methods that end up doing this anyway. So, if you want, cut out the middle man. It's not a significant issue either way.
- Accessing Native Properties and Methods: you can access attribute values directly on anchor tags. The get method is particularly helpful, as it can translate your jQuery collection into an array.
- Detect AJAX Requests with PHP: For the huge majority of our projects, we can't only rely on JavaScript for things like validation or AJAX requests. What happens when JavaScript is turned off? For this very reason, a common technique is to detect whether an AJAX request has been made with your server-side language of choice.
- jQuery and $: why/how you can use jQuery and $ interchangeably? At the very bottom of jQuery source: window.jQuery = window.$ = jQuery;
	The entire jQuery script is, of course, wrapped within a self-executing function, which allows the script to limit the number of global variables as much as possible. What this also means, though, is that the jQuery object is not available outside of the wrapping anonymous function. To fix this, jQuery is exposed to the global window object, and, in the process, an alias - $ - is also created.
- A Single Hover Function: we can pass a single function to the hover method. 
	Many times, you'll still need to pass two functions to hover, and that's perfectly acceptable. However, if we would only need to toggle some element (or something like that), passing a single anonymous function will save a handful of characters or so.
- Passing an Attribute Object: we can pass an object as the second parameter of the jQuery function
	This is helpful when we need to insert new elements into the DOM. Not only does this save a few characters, but it also makes for cleaner code. In addition to element attributes, we can even pass jQuery specific attributes and events, like click or text.

jQuery performance rules:
- Always Descend From an #id
- Use Tags Before Classes
- Cache jQuery Objects
- Harness the Power of Chaining
- Use Sub-queries
- Limit Direct DOM Manipulation
- Leverage Event Delegation (a.k.a. Bubbling)
- Eliminate Query Waste
- Defer to $(window).load
- Compress Your JS
- Learn the Library
- Avoid use of string concat(), Use join() for the long strings.
- Use Latest jQuery versions with CDN hosted files instead of older version.
- Use of For loop instead of jQuery $.each loop.
- Check if an Element Exists before doing operations on the DOM elements.
- Always use Return False in functions.
- Use of HTML5 Data Attributes.
 - Identify weight of the page.
- Keep your code DRY (Don’t Repeat Yourself)

How jQuery Works:
- The jQuery library exposes its methods and properties via two properties of the window object called jQuery and $. $ is simply an alias for jQuery and it's often employed because it's shorter and faster to write.
- You must place the remaining jQuery examples inside the ready event so that your code executes when the document is ready to be worked on.