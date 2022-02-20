
new-back nb:
	mix phx.new backend --no-assets --no-html

new-front nf:
	mix phx.new frontend

db-start dbs:
	postgres -D /usr/local/var/postgres
