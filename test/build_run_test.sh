#!/bin/bash -eux

SCRIPTDIR=$(cd $(dirname $BASH_SOURCE); pwd)
x10c++ -sourcepath $SCRIPTDIR/../src -d , $SCRIPTDIR/TestRunner.x10
,/a.out > test_out.txt
cat test_out.txt
diff test_out.txt $SCRIPTDIR/expected.txt

