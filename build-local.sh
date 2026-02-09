#!/bin/bash
# Build Satis repository locally
# Requires: composer, php 8.2+

set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

if [ ! -d /tmp/satis ]; then
    echo "Installing Satis..."
    composer create-project composer/satis:dev-main /tmp/satis --no-dev --no-interaction
fi

echo "Building Satis repository..."
php /tmp/satis/bin/satis build "$SCRIPT_DIR/satis.json" "$SCRIPT_DIR/docs"

echo "Done! Output in $SCRIPT_DIR/docs/"
echo "To test locally: php -S localhost:8080 -t $SCRIPT_DIR/docs"
