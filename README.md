# hx_check_cve

# What is hx_check_cve?
hx_check_cve makes use of debsecan and checks all installed packages against CVE entries. Please note: It only supports Debian it will not work on ubuntu or other distributions that are not tracked on https://security-tracker.debian.org.

# How do I use hx_check_cve
Simply copy hx_check_cve into /var/lib/nagios/plugins and give it the execution file mode bit (`chmod +x /usr/lib/nagios/plugins/hx_check_cve`). Call it by

`/usr/lib/nagios/plugins/hx_check_cve`

and it shuld output of how many CVEs your system is affected.

Running with
`/usr/lib/nagios/plugins/hx_check_cve -f`
and you will also get how many CVEs are already fixed.

# Skipping obsulete CVEs?
By adding `--no-obsolete` or `-o` to the call, debsecan will run with "--no-obsolete" param and ignoring obsolete CVEs. Please refer to `man debsecan` for that parameter.

Example call:
`/usr/lib/nagios/plugins/hx_check_cve -f -o`

# Requirements
hx_check_cve requires lsb-release and debsecan. You can install those by running
`apt install lsb-release debsecan`

# Debian Package
A package for Debian ist available at https://files.hexathos.de/projects/hx-monitoring-plugin-checkcve/
