#!/usr/bin/env bash

set -e

echo "Generating nginx self sinded X509 cert ..."
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout nginx-selfsigned.key -out nginx-selfsigned.crt

echo "Generating nginx dhparam.pem ..."
openssl dhparam -out dhparam.pem 2048