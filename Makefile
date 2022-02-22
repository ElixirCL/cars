
new-back nb:
	mix phx.new backend --no-assets --no-html

new-front nf:
	mix phx.new frontend --no-mailer --no-dashboard --no-ecto --no-gettext

db-start dbs:
	postgres -D /usr/local/var/postgres
