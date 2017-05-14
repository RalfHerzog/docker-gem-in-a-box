#!/usr/bin/env bash

if [ -z "${LDAP_HOSTNAME}" ]
then sed -i "s/{{LDAP_HOSTNAME}}/localhost/" /opt/config.yml
else sed -i "s/{{LDAP_HOSTNAME}}/${LDAP_HOSTNAME}/" /opt/config.yml
fi
if [ -z "${LDAP_BASEDN}" ]
then sed -i "s/{{LDAP_BASEDN}}/ou=groups,dc=domain,dc=tld/" /opt/config.yml
else sed -i "s/{{LDAP_BASEDN}}/${LDAP_BASEDN}/" /opt/config.yml
fi
if [ -z "${LDAP_ROOTDN}" ]
then sed -i "s/{{LDAP_ROOTDN}}/cn=admin,dc=domain,dc=tld/" /opt/config.yml
else sed -i "s/{{LDAP_ROOTDN}}/${LDAP_ROOTDN}/" /opt/config.yml
fi
if [ -z "${LDAP_SECRET}" ]
then sed -i "s/{{LDAP_SECRET}}/secret/" /opt/config.yml
else sed -i "s/{{LDAP_SECRET}}/${LDAP_SECRET}/" /opt/config.yml
fi
if [ -z "${LDAP_PORT}" ]
then sed -i "s/{{LDAP_PORT}}/389/" /opt/config.yml
else sed -i "s/{{LDAP_PORT}}/${LDAP_PORT}/" /opt/config.yml
fi
if [ -z "${LDAP_USERNAME_ATTRIBUTE}" ]
then sed -i "s/{{LDAP_USERNAME_ATTRIBUTE}}/uid/" /opt/config.yml
else sed -i "s/{{LDAP_USERNAME_ATTRIBUTE}}/${LDAP_USERNAME_ATTRIBUTE}/" /opt/config.yml
fi
if [ -z "${LDAP_SIMPLE_TLS}" ]
then sed -i "s/{{LDAP_SIMPLE_TLS}}/false/" /opt/config.yml
else sed -i "s/{{LDAP_SIMPLE_TLS}}/${LDAP_SIMPLE_TLS}/" /opt/config.yml
fi
if [ -z "${LDAP_STARTTLS}" ]
then sed -i "s/{{LDAP_STARTTLS}}/false/" /opt/config.yml
else sed -i "s/{{LDAP_STARTTLS}}/${LDAP_STARTTLS}/" /opt/config.yml
fi

exec "$@"