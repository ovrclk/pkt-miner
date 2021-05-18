#!/bin/sh

if [ -z "$PAYMENT_ADDR" ]; then
  echo "PAYMENT_ADDR not defined"
  exit 1
fi

exec ./packetcrypt ann "${POOL_HOST:-$POOL_HOST_DEFAULT}" --paymentaddr "$PAYMENT_ADDR"
