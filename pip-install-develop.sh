#!/usr/bin/bash

#these are ordered specifically for the dependency resolution
CMD="pip install $@ -e"

$CMD wield-pytest/
$CMD wield-bunch/
$CMD wield-utilities/
$CMD wield-declarative/

$CMD wield-control/
$CMD wield-iirrational/
$CMD wield-quantum/

$CMD wield-devel/

$CMD wield-doc/
$CMD wield-model/
$CMD wield-test/

$CMD wield-LIGO-IFO
$CMD wield-epics-autocas

$CMD wield-namespace

$CMD pygwinc/
