Write-Host "What changes did you introduce or files did you change in the wiki?"

$script:Title = $env:PR_TITLE
$script:Body = @"
Pushed updates to the wiki.

Pull-Request: $env:PR_NUMBER
Workflow: $env:GITHUB_WORKFLOW
"@

@(
    ".\.WIKI",
    "."
) | ForEach-Object {
    Write-Host
    Write-Host "Committing: $_..."
    Write-Host
    git -C $_ pull origin | Out-Null
    git -C $_ add . | Out-Null
    $diff = git -C $_ diff --cached --name-only
    if( $diff.count ){
        git -C $_ commit -m $Title -m $Body | Out-Null
        git -C $_ push -u origin | Out-Null
    }
}

Write-Host
Write-Host "Done!"