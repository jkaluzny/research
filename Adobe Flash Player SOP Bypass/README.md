<pre>
Vulnerability name:
ActionScript loadMovie() does not verify the MIME type of imported files which leads to security sandbox partial bypass (same-origin flashing and XSS).

Vulnerability description:
In a standard situation, loadMovie() and other loader methods allow to import other SWF files from external websites but they are not able to bypass the security sandbox.
loadMovie() accepts multiple file types, including SWF movies, SWF sprites and images. However, it does not verify the mime-type and parses only the file content.
In specific circumstances, if an attacker is able to upload a SWF file with JPG extension to a server, which hosts a SWF vulnerable to loadMovie() same-origin flashing, he is able to bypass the security sandbox.

Test case:
loadMovieBypass.swf accepts arbitrary SWF for loadMovie() method in "src" parameter.
exploit.swf triggers a XSS
http://localhost/flash/loadMovieBypass.swf?src=http://localhost/flash/exploit.swf triggers XSS, as it is same-origin
http://localhost/flash/loadMovieBypass.swf?src=http://127.0.0.1/flash/exploit.swf does not trigger XSS as it is cross-origin

Assuming the attacker is able to upload exploit.jpg file to the server which hosts the vulnerable SWF:
http://localhost/flash/exploit.jpg has the contents of exploit.swf but it is transferred with image/jpeg MIME-type
http://localhost/flash/loadMovieBypass.swf?src=http://localhost/flash/exploit.jpg triggers XSS

Exploitation requirements:
A vulnerable SWF with arbitrary Flash import (XSF) using loadMovie() or other import functions
Possibility to upload arbitrary files with any other extension than .swf (e.g. .jpg).

Exploitation consequences:
Security sandbox partial bypass (same-origin flashing and XSS).

Remediation:
Verify not only origin but also the MIME type of the imported flash files in loadMovie() and other loading methods.

</pre>
