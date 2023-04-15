#!/usr/bin/env bash

#these are ordered specifically for the dependency resolution
CMD="pip install -e $@"

$CMD wield-pytest/
$CMD wield-bunch/
$CMD wield-utilities/
$CMD wield-declarative/

$CMD wield-control/
$CMD wield-iirrational/
$CMD wield-quantum/
$CMD wield-epics-autocas/

$CMD wield-devel/

$CMD wield-doc/
$CMD wield-model/
$CMD wield-test/
