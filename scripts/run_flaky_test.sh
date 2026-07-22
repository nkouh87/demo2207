#!/usr/bin/env bash
# Simulated flaky test
python - <<'PY'
import random,sys
if random.random() < 0.6:
    print("Flaky test passed")
    sys.exit(0)
else:
    print("Flaky test failed")
    sys.exit(1)
PY
