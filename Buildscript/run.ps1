Clear-Host

remove-module [p]sake
import-module .\Tools\psake\psake.psm1

$psake.use_exit_on_error = $true 
Invoke-psake .\buildscript.ps1 Compile -properties @{ revision = '12345'; }