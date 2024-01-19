clear-host

set-location 'S:\Codex\OneDrive\GitHub\wishlist\'

$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

if (!(test-path -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\bkup'))
{
    New-Item -Path 'S:\Codex\OneDrive\GitHub\wishlist\' -Name 'bkup\' -ItemType 'Directory'
}

if (test-path -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....json')
{
    if (test-path -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json')
    {
        move-item -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json' -Destination "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.json"
    }
    move-item -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....json' -Destination 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json'
}

if (test-path -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....txt')
{
    if (test-path -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt')
    {
        move-item -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt' -Destination "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.txt"
    }
    move-item -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....txt' -Destination 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt'
}

7za u -r -y -mx9 bkup.zip bkup

start-sleep 1

Remove-Item -LiteralPath ".\bkup" -Recurse

start-sleep 1

git commit -am.

git push
