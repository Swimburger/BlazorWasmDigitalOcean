If (Test-Path 'release/wwwroot') {
    Remove-Item release/wwwroot/* -Exclude ".*" -Recurse
}

dotnet publish -c Release -o release