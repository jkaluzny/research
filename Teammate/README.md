<pre>
Teammate Audit Management is a software which helps organizations manage internal and external audits. It has many features and modules, including risk assessment, scheduling, planning, execution, review, report generation, trend analysis, audit committee reporting and storage. 
We have been able to discover following vulnerabilities:

Software version: TeamMate AM v10.4.1.
1. Hardcoded database credentials for privileged access
2. Use of one-way hash without a salt (for passwords)
3. Many cases of stored XSS (web interface), together with Daniel Iziourov
</pre>
