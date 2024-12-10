if ($false) {
    Clear-Host
    Set-Location 'C:\Users\cstat\onedrive\documents\GitHub\wishlist'

    Copy-Item .\.scripts\bundler\* . -Force

    node 'index.js'
    node 'pretifyjson.js' > '.\Revia Scarlet.json'

    Start-Sleep 1

    Remove-Item 'index.js'
    Remove-Item 'typedefs.js'
}
