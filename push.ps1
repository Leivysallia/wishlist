clear-host

$unixtime = [DateTimeOffset]::Now.ToUnixTimeSeconds()

if (test-path -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json')
{
    move-item -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json' -Destination "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.json"
}

if (test-path -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt')
{
    move-item -LiteralPath 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt' -Destination "S:\Codex\OneDrive\GitHub\wishlist\bkup\$unixtime.txt"
}

if (test-path -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....txt')
{
    move-item -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....txt' -Destination 'S:\Codex\OneDrive\GitHub\wishlist\elisys.txt'
}

if (test-path -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....json')
{
    move-item -LiteralPath 'S:\Codex\OneDrive\Downloads\Uhh....json' -Destination 'S:\Codex\OneDrive\GitHub\wishlist\elisys.json'
}
