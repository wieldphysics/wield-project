#!/usr/bin/env bash

#these are ordered specifically for the dependency resolution

pip install -e wavestate-pytest/
pip install -e wavestate-bunch/
pip install -e wavestate-utilities/
pip install -e wavestate-declarative/

pip install -e wavestate-AAA/
pip install -e wavestate-control/
pip install -e wavestate-iirrational/
pip install -e wavestate-quantum/
pip install -e wavestate-epics-autocas/

pip install -e wavestate-devel/

pip install -e wavestate-doc/
pip install -e wavestate-model/
pip install -e wavestate-test/
