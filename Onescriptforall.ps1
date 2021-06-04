#! /usr/bin/env bash

echo "You can do limited stuff in both bash and powershell with no code duplication.

 Most helpfully, you can invoke executables with parameters.

 You use echo, and some common things like ls

 The shebang header will make it run in bash on nix, whilst the .ps1 file
 extension will make it run in powershell on Windows.

 You can show parameters albeit messily: args=$args ; argv=$argv ; @=$@."

# multiline function definitions can be identical for both 

function mountwork { 
  open ~/Documents/myworkencrypteddisk.sparseimage
  /Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt --mount $myWorkVeracryptFile -k $myVeracryptKeyfile
}

function dismountwork { 
  /Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt --dismount $myWorkVeracryptMountPath
}

# one-line function definition in bash requires semicolon before closing brace
function ssh-to-myserver { ssh $myserver -t 'tmux attach || tmux' ; }
