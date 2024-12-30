$ErrorActionPreference = 'Stop'; # stop on all errors

# Define the variables for the installation
$url = 'https://install.python-poetry.org'
$filePath = Join-Path $env:TEMP 'install-poetry.py'

# Download the installation script using Chocolatey helper
Get-ChocolateyWebFile -Url $url -FileFullPath $filePath

# Run the downloaded script using Python
$command = "py `"$filePath`""
Start-ChocolateyProcessAsAdmin $command

# Clean up the installation file after installation
Remove-Item $filePath -Force
