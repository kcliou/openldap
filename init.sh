# dns must be set
# /etc/sysconfig/slapd
ldapadd -Y EXTERNAL -H ldapi:/// -f rootpw.ldif 

# the folder /etc/openldap/certs need to be own by ldap
ldapadd -Y EXTERNAL -H ldapi:/// -f certificate.ldif 

ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/cosine.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/nis.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/inetorgperson.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f /etc/openldap/schema/ppolicy.ldif

# /etc/rsyslog.conf with "local4.*  /var/log/slapd.conf
ldapadd -Y EXTERNAL -H ldapi:/// -f ./logLevel.ldif

# openssh-ldap
ldapadd -Y EXTERNAL -H ldapi:/// -f ./openssh-lpk-openldap.ldif

# sudoers
ldapadd -Y EXTERNAL -H ldapi:/// -f ./sudo.ldif
ldapadd -Y EXTERNAL -H ldapi:/// -f olcModule.ldif

# domain
ldapadd -Y EXTERNAL -H ldapi:/// -f DC.ldif

# repl Sync
ldapadd -Y EXTERNAL -H ldapi:/// -f repl.ldif

# turn on tls once it is done
# ldapadd -Y EXTERNAL -H ldapi:/// -f secure.ldif

#going into org to add object
