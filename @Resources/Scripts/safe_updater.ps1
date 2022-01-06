$source = 'https://github.com/ervans589/Meenimal-for-Rainmeter/archive/refs/heads/main.zip'
$destination = $env:TEMP
Write-Output ''
Write-Output 'Safe Meenimal Installer'
Write-Output 'Warning: BackUp does not work properly at the moment.'
Do {
    $backUp = Read-Host 'Do you want to back up the current version? (Y/N)'
    if ($backUp -eq 'Y') {
        New-Item -Path 'Documents\Rainmeter\Skins\@Backup\Meenimal' -ItemType Directory -Force
        Copy-Item 'Documents\Rainmeter\Skins\Meenimal' 'Documents\Rainmeter\Skins\@Backup' -Recurse -force
    }
}Until (($backUp -eq 'Y') -or ($backUp -eq 'N'))
Invoke-WebRequest -Uri $source -OutFile $destination\Meenimal.zip
Expand-Archive $destination\Meenimal.zip -DestinationPath $destination
Rename-Item $destination\Meenimal-for-Rainmeter-main $destination\Meenimal
Remove-Item $destination\Meenimal.zip
Copy-Item $destination\Meenimal $env:USERPROFILE\Documents\Rainmeter\Skins -Recurse -force
Copy-Item $destination\Meenimal\@Vault\Plugins\* $env:USERPROFILE\Documents\Rainmeter\Skins\@Vault\Plugins -Recurse -force
Remove-Item $destination\@Vault -Recurse -force
Remove-Item $destination\Meenimal -Recurse -force
Remove-Item $env:USERPROFILE\Documents\Rainmeter\Skins\Meenimal\@Vault -Recurse -force
Write-Output 'Make sure to Refresh All from Rainmeter!'
Write-Host -NoNewLine 'Press any key to continue...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')