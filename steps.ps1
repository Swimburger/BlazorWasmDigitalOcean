mkdir BlazorWasmDigitalOcean
cd BlazorWasmDigitalOcean
dotnet new blazorwasm

dotnet new gitignore
git init
git add *
git commit -m "Add Blazor Wasm project"
gh repo create
git push --set-upstream origin main