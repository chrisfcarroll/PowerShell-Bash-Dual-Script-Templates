#! /usr/local/bin/fish
# This file has a fish section followed by a powershell section,
# as well as shared sections.
echo @'
' > /dev/null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Fish Start ---------------------------------------------------------------

set scriptdir (status current-filename)
echo fish script is running from $scriptdir

# Above this line is fish Script -------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo \
'@ | out-null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Below this line is Powershell Script -------------------------------------

$scriptdir=$PSScriptRoot
"powershell. Script is running from $scriptdir"

# Above this line is Powershell Script -------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
out-null `' > /dev/null

echo "Some lines work in both bash and powershell. Calculating scriptdir=$scriptdir, requires separate sections."
