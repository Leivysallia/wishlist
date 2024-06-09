clear-host

set-location 'S:\Codex\Drive\GitHub\wishlist\'

$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

New-Item -Path 'S:\Codex\Drive\GitHub\wishlist\bkup'  -ItemType 'Directory' -force

if (test-path 'S:\Codex\Drive\GitHub\wishlist\elisys.json') {
    Copy-Item 'S:\Codex\Drive\GitHub\wishlist\elisys.json' "S:\Codex\Drive\GitHub\wishlist\bkup\elisys.json.bkup"
}

if (test-path 'S:\Codex\Drive\GitHub\wishlist\elisys.txt') {
    Copy-Item 'S:\Codex\Drive\GitHub\wishlist\elisys.txt' "S:\Codex\Drive\GitHub\wishlist\bkup\elisys.txt.bkup"
}

zip -0rm '.\bkup.zip' '.\bkup\'

git commit -am.

git push
