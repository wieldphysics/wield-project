#!/usr/bin/env bash

#these are ordered specifically for the dependency resolution

pip install -e wield-pytest/
pip install -e wield-bunch/
pip install -e wield-utilities/
pip install -e wield-declarative/

pip install -e wield-AAA/
pip install -e wield-control/
pip install -e wield-iirrational/
pip install -e wield-quantum/
pip install -e wield-epics-autocas/

pip install -e wield-devel/

pip install -e wield-doc/
pip install -e wield-model/
pip install -e wield-test/
