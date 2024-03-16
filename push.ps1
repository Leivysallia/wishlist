clear-host

set-location 'S:\Codex\Drive\GitHub\wishlist\'

$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

New-Item -Path 'S:\Codex\Drive\GitHub\wishlist\bkup'  -ItemType 'Directory' -force

if (test-path 'S:\Codex\Drive\GitHub\wishlist\elisys.json') {
    Copy-Item 'S:\Codex\Drive\GitHub\wishlist\elisys.json' "S:\Codex\Drive\GitHub\wishlist\bkup\$unixtime.json"
}

if (test-path 'S:\Codex\Drive\GitHub\wishlist\elisys.txt') {
    Copy-Item 'S:\Codex\Drive\GitHub\wishlist\elisys.txt' "S:\Codex\Drive\GitHub\wishlist\bkup\$unixtime.txt"
}

zip -0rm bkup.zip bkup

start-sleep 1
if (Test-Path 'S:\Codex\Drive\GitHub\wishlist\bkup' ) {
    Remove-Item ".\bkup" -Recurse -ErrorAction SilentlyContinue
}

start-sleep 2

git commit -am.

git push
