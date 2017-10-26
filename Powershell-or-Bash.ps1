# This file has a powershell section followed by the bash section,
# as well as shared sections.
# ----------------------------------------------------------------------
echo @"
" > /dev/null ; echo > /dev/null <<"out-null" ###
"@ | out-null 
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Powershell Start -----------------------------------------------------

$scriptdir=$PSScriptRoot
"powershell. Script is running from $scriptdir"

# Powershell End -------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
out-null
echo @'
' > /dev/null
#vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
# Bash Start -----------------------------------------------------------
scriptdir="`dirname "${BASH_SOURCE[0]}"`";
echo BASH. Script is running from $scriptdir
# Bash End -------------------------------------------------------------
# ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo > /dev/null <<out-null
'@ | out-null
out-null
# ------------------------------------------------------

echo "Some lines work in both bash and powershell. Calculating scriptdir=$scriptdir, requires separate sections."
