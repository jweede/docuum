#!/usr/bin/env bash
set -euxo pipefail

here="$(dirname "$(realpath "${BASH_SOURCE[0]}")")"

cargo clean
# rustup target add x86_64-unknown-linux-musl
cargo deb -v --target x86_64-unknown-linux-musl
[[ -f "${here}"/target/x86_64-unknown-linux-musl/debian/docuum_*.deb ]]