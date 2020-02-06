Section: misc
Priority: optional
Homepage: https://hexathos.de
Standards-Version: 3.9.2

Package: hx-monitoring-plugin-checkcve
Version: 1.0.1-DATE~git+GITVERSION~jenkinsbuild+BUILD
Maintainer: Rainer Bendig <hexathos@mailbox.org>
Architecture: all
Files: usr/lib/nagios/plugins/hx_check_cve /
Description: Monitoring Plugin checking installed packages against CVE by using debsecan
Depends: lsb-release, debsecan
File: postinst
 #!/bin/sh -e
 set -e
 if [ "$1" = configure ] ; then
    chmod +x /usr/lib/nagios/plugins/hx_check_cve
 fi
