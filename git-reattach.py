#!/usr/bin/python3

import subprocess
import re
import sys

ret = subprocess.run('git log -s --pretty=%D -n 1', shell=True, capture_output=True)

out = [o.strip() for o in ret.stdout.decode('utf-8').split(',')]

if not 'HEAD' in out[0]:
    print("BAD: head not first returned element", file=sys.stderr)
    sys.exit(1)

if 'HEAD ->' in out[0]:
    print("already on branch: ", out[0])
    sys.exit(0)

oset = set()
for o in out[1:]:
    oset.add(o.split('/')[-1])

oset.discard('HEAD')

if len(oset) > 1:
    print(out)
    print("BAD: branch choice is ambiguous: choices {}".format(oset), file=sys.stderr)
    sys.exit(1)

nearest = list(oset)[0]
print("Nearest Branch: ", nearest)
subprocess.run(['git', 'checkout', nearest])
