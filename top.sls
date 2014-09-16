#base:
#  '*':
#    - mysql-server
#    - nginx
#    - python
#    - supervisor
base:
    '*':
        - mysql-server
        - ldap-client
        - networking
        - salt.minion

    'salt-master*':
        - salt.master

    '^(memcache|web).(qa|prod).loc$':
        - match: pcre
        - nagios.mon.web
        - apache.server

    'os:Ubuntu':
        - match: grain
        - repos.ubuntu

    'os:(RedHat|CentOS)':
        - match: grain_pcre
        - repos.epel

    'foo,bar,baz':
        - match: list
        - database

    'somekey:abc':
        - match: pillar
        - xyz

    'nag1* or G@role:monitoring':
        - match: compound
        - nagios.server
