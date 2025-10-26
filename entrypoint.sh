#!/bin/bash
set -e

echo "Setting up Odoo permissions..."

mkdir -p /var/lib/odoo/sessions
mkdir -p /var/lib/odoo/filestore

chown -R odoo:odoo /var/lib/odoo
chmod -R 755 /var/lib/odoo

exec "$@"
