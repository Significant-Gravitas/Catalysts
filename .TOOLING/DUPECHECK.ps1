Set-Location (git rev-parse --show-toplevel)
Push-Location ".\.TOOLING\AIDS"

$script:links = python.exe .\git-aid\duplicate_issue_finder.py `
    Significant-Gravitas Auto-GPT `
    --days 7 --threshold 0.8 --top_n 10 |
        Where-Object {
            $_.StartsWith( "Link to Issue" )
        } | ForEach-Object {
            $Link = $_.Split( ": " )[-1]
            $Link.Trim()
        }

$pairs = New-Object System.Collections.ArrayList
for ($i = 0; $i -lt $links.Count; $i++) {
    <# Action that will repeat until the condition is met #>
    # determine if $i is even or odd

    if ($i % 2 -eq 0) {
        $script:pairs.Add( @($links[$i], $links[$i+1]) ) | Out-Null
    }
}

$script:pairings = @{}

$pairs | ForEach-Object {
    $key = $_[0]
    $value = $_[1]
    $pairings.add( $key, $value ) | Out-Null
}

$script:iterator = New-Object System.Collections.ArrayList

$iterator.AddRange( $pairings.Keys )

$iterator | ForEach-Object {
    $key = $_
    $value = $pairings[$key]
    if( $key -eq $pairings[$value] ){
        $pairings.Remove( $key ) | Out-Null
    }
}

$pairs = $pairings.GetEnumerator() | ForEach-Object {
    @($_.Key, $_.Value)
}

Write-Host "Found $(@(,$pairs).Count) duplicate(s)"
Write-Host "Run Open-NextPair to open the next pair of issues"

$global:currentpair = 0
function Open-NextPair{
    if( $global:currentpair -ge $pairs.Count ){
        Write-Host "true"
        $global:currentpair = 0
    }
    $pair = @(,$pairs)[$global:currentpair]
    Start-Process $pair[0]
    Start-Process $pair[1]
    $global:currentpair = $global:currentpair + 1
}
Pop-Location