mkdir BlazorWasmDigitalOcean
cd BlazorWasmDigitalOcean
dotnet new blazorwasm

dotnet new gitignore
git init
git add *
git commit -m "Add Blazor Wasm project"
gh repo create
git push --set-upstream origin main

dotnet publish -c Release -o release
Add-Content -Path ./.gitignore -NoNewline -Value "$([Environment]::NewLine)release";

cd release\wwwroot
git init
"* binary" >> .gitattributes
git add *
git init -b static
git add *
git commit -m "Add static output"
git remote add origin https://github.com/Swimburger/BlazorWasmDigitalOcean.git
git push --set-upstream origin static