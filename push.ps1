clear-host

set-location 'S:\Codex\OneDrive\GitHub\wishlist\'

$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

if (!(test-path 'S:\Codex\OneDrive\GitHub\wishlist\bkup')) {
    New-Item -Path 'S:\Codex\OneDrive\GitHub\wishlist\' -Name 'bkup\' -ItemType 'Directory'
}
if (test-path 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json') {
    Copy-Item 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json' "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.json"
}


if (test-path 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt') {
    Copy-Item 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt' "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.txt"
}

if (test-path 'S:\Codex\OneDrive\GitHub\wishlist\elisys.bin') {
    Copy-Item 'S:\Codex\OneDrive\GitHub\wishlist\elisys.bin' "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.bin"
}

7za u -r -y -mx9 bkup.zip bkup

#start-sleep 1

#Remove-Item ".\bkup" -Recurse -ErrorAction SilentlyContinue

#start-sleep 1

git commit -am.

git push
