Clear-Host
Set-Location $PSScriptRoot
#https://raw.githubusercontent.com/Leivysallia/wishlist/main/echos.txt
#https://raw.githubusercontent.com/Leivysallia/wishlist/main/leivysallia.txt
#https://raw.githubusercontent.com/Leivysallia/wishlist/main/elisys.txt

#git config --global user.email "aelenydd@gmail.com"
#git config --global credential.helper wincred
#git config --global user.name "Leivysallia"
#git lfs install
#git lfs track "*.wim"
#git lfs track "*.zip"
#git lfs track "*.7z"
#git lfs track "*.exe"
#git lfs track "*.dll"
#git add .gitattributes

git add --all
git commit -am'push.ps1'
git push
