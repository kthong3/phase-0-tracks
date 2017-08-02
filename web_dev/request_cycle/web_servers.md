What are some of the key design philosophies of the Linux operating system?

Linux borrows heavily from the UNIX operating system because it was written to be a free and open source version of UNIX. 

An operating system, by its nature, embodies the philosophy of its creators... The creators of the Unix operating system started with a radical concept: they assumed that the user of their operating system would be computer literate from the start. The entire Unix philosophy revolves around the idea that the user knows what he or she is doing.

Files are stored in a hierarchical filesystem, with the top node of the system being root or simply "/". Whenever possible, Linux makes its components available via files or objects that look like files.

Linux is a fully multitasking (a method where multiple tasks are performed during the same period of time), multiuser operating system, with built-in networking and service processes known asdaemons in the UNIX world.

Linux treats everyone equally and allows everyone the maximum amount of power. That is egalitarian. Other operating systems are elitist and exclusive because they withhold or hide their power behind an inflexible Graphical User Interface that allows one to do only what the developers think we should be allowed to do.

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
VPS is a virtual computer and is sold as a service by an internet hosting service.

advantages of VPS:
- flexibility & root access: since VPS runs its own copy of an operating system (with freedom to choose whichever operating system), customers may have access to that operating system at a superuser level so they can install almost any software that runs on that operating system. 
-  easily scalable: the traffic and activities of other VPS customers will not adversely affect your operation.
- performance: having your own allotment of resources allows you and your visitors to enjoy faster load times.
- dedicated resources:  VPS hosting provides you with more disk space, CPU and RAM. The virtual environment can start with the minimum amount of resources needed and then as it grows gradually, the customer can increase the hosting plan to accommodate their needs. Customers would not have to pay for excessive resources that they have not yet grown into.
- cost effective for small websites
- they provide the same technical support as with shared hosting for most issues
- server monitoring: a good VPS provider will actively monitor its network and hardware your account relies on.  This ensures the physical security of the server and also helps defend against virtual threats such as hackers, malicious software and DDoS attacks.

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
- security issue: a vulnerability or malicious software can cause much more harm, because you gave it full permissions. It can change programs in /bin and add backdoors, mess with files in /etc and make the system unbootable etc.
- much more prone to mistakes or software bugs to easily be the victim of a buggy script which accidentally deletes critical files.

Example: 
- program which deleted files as a bug. If it ran as a limited user, at most it can damage stuff in your home directory and on a few other devices (e.g. USB disks). This would be bad but if you had backups, it would be fairly easy to restore the files in the home folder. If ran as root, it might have freedom to delete everything in the system. 
- if the rm -rf * was ran by mistake, or if input/output device was swapped in dd, would be stopped by your lack of permissions, but if you run as root, you are all powerful.

Even if the programmer knows what they're doing, the system isn’t designed to be run as root – they're bypassing much of the security architecture that makes Linux so secure.

DOM properties of an HTML element. Find at least five properties (in addition to the ones pointed out in the video) that might be interesting to change once the page is loaded, either because you have a good guess at what they do, or because you're curious about what they do.
- baseURI: It is a read-only property returns the absolute base URL of a node. It changed each time a new link is clicked and changes to the current link open in the browser. 
- innerText: innerText retrieves and sets the content of the tag as plain text
- innerHTML: retrieves and sets the same content but in HTML format
- offsetHeight: height of the element including vertical padding and borders, as an integer
- offsetLeft: integer representing the offset to the left in pixels from the closest relatively positioned parent element.

