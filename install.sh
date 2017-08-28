#!/bin/bash

set -eou pipefail

autoreconf --version
make htslib
