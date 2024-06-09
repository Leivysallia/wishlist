clear-host

set-location 'S:\Codex\OneDrive\Documents\GitHub\wishlist\'

#$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

New-Item -Path 'S:\Codex\OneDrive\Documents\GitHub\wishlist\bkup'  -ItemType 'Directory' -force

if (test-path 'S:\Codex\OneDrive\Documents\GitHub\wishlist\elisys.json') {
    Copy-Item 'S:\Codex\OneDrive\Documents\GitHub\wishlist\elisys.json' "S:\Codex\OneDrive\Documents\GitHub\wishlist\bkup\elisys.json.bkup"
}

if (test-path 'S:\Codex\OneDrive\Documents\GitHub\wishlist\elisys.txt') {
    Copy-Item 'S:\Codex\OneDrive\Documents\GitHub\wishlist\elisys.txt' "S:\Codex\OneDrive\Documents\GitHub\wishlist\bkup\elisys.txt.bkup"
}

zip -0rm '.\bkup.zip' '.\bkup\'

git commit -am.

git push
