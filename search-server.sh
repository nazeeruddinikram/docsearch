#!/usr/bin/env bash
if [ ! -d _env ] || [ 'scripts/requirements' -nt _env ]; then
    . make_env.sh
fi

. _env/bin/activate
cd python
PYTHONPATH=. python docsearch/search-server.py "$@"
deactivate
