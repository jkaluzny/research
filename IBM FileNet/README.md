<pre>
The software is known as Daeja ViewOne or IBM FileNet Viewer, version 4.0.66.
MD5 sum of ji.jar applet is: 590688cdd8a6a48ff4310655a484653f

IBM FileNet Workplace 4.0.2 before 4.0.2.14 LA012 allows remote authenticated users to read arbitrary files or cause a denial of service (memory consumption) via an XML document containing an external entity declaration in conjunction with an entity reference, related to an XML External Entity (XXE) issue.

CVE number: CVE-2016-3055
Credit: Jakub Kaluzny, ScuRing

This was XXE OOB over FTP, delivered in one request and executed in a second stage (second-order). IBM FileNet (Daeja ViewOne) allows to modify or add new documents, the request contains XML code. The exploitation requires authenticated user to tamper with XML file (FileNet is Java applet) and add standard "XXE OOB over FTP" payload. What is interesting, attacker's FTP server was contacted with /etc/passwd file contents not during the first request but in the second stage, in a separate menu which lists all adnotations to documents.

</pre>
