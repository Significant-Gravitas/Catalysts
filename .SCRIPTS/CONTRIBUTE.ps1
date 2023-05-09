Set-Location (git rev-parse --show-toplevel)

function script:Read-Tree{

    param( $Path = "." )

    $Children = (Get-ChildItem $Path).Name |
        Where-Object { !$_.StartsWith( "." ) }

    $Tree = @{}
    $Children | ForEach-Object {

        if ( (Get-Item "$Path\$_").PSIsContainer -eq $true ) {
            if ( $Tree.ContainsKey( "Folders" ) -eq $false -or $null -eq $Tree["Folders"] ){
                $Tree.Folders = @{}
            }
            $Out = Read-Tree "$Path\$_"
            $Tree.Folders.Add( $_, $Out ) | Out-Null
        } else {
            if ( $null -eq $Tree.Files ){
                $Tree.Files = New-Object System.Collections.ArrayList
            } 
            $Tree.Files.Add( $_ ) | Out-Null
        }

    }

    $Tree
}

function script:Copy-Gists{
    
    param(
        $DirArray,
        $Tree
    )

    $TreePrefix = ".\" + ($DirArray -join "\")

    if( $DirArray.Count -eq 0 ){
        $TreePrefix = "."
    }

    if ( $null -ne $Tree.Folders ) {
        $Tree.Folders.Keys | ForEach-Object {
            Copy-Gists -DirArray ( $DirArray + $_ ) -Tree $Tree.Folders[$_]
        }
    }

    if( $null -ne $Tree.Files){
        $Tree.Files | ForEach-Object {
            $GistPrefix = $DirArray -join "."
            $GistFile = $_

            if( $GistFile -eq "README.md" ){
                $GistFile = "__" + $GistFile
            }

            $ParentDir = $DirArray[-1]
            if( $DirArray.Count -eq 0 ){
                $GistPrefix = $GistFile
            } elseif( $ParentDir.length ){
                $GistPrefix = "_" + ($DirArray -join ".")
                $ParentName = ($ParentDir -split "\.")[-1]
                $LeafBase = Split-Path -LeafBase $GistFile
                $ChildName = ($LeafBase -split "\.")[-1]
                if ( $ParentName -ne $ChildName ) {
                    $GistPrefix += ".$GistFile"
                } else {
                    $GistPrefix += ".md"
                }
            }
    
            Write-Host "Moving: $TreePrefix\$_ "
            Write-Host "    to: .\.GISTS\$GistPrefix"
    
            Copy-Item "$TreePrefix\$_" -Destination ".\.GISTS\$GistPrefix" -Force
        }
    }

}

$Out = Read-Tree

Get-ChildItem "./.gist" | Remove-Item –recurse -Force
Copy-Gists -DirArray @() -Tree $Out

Write-Host "What convos did you add?"

$Convo = Read-Host
$Title = ($Convo -split "\/|\\")[-1]

git add .
$diff = @{
    "GISTS" = git -C ".\.GISTS" diff --cached --name-only
    "WIKI" = git -C ".\.WIKI" diff --cached --name-only
}


if( $Convo -eq $Title ){
    if( $diff.GISTS.count ){
        git -C ".\.GISTS" commit -m $Title
        git -C ".\.GISTS" push -u origin
        git add .
    }
    if( $diff.WIKI.count ){
        git -C ".\.WIKI" commit -m $Title
        git -C ".\.WIKI" push -u origin
        git add .
    }
    if( (git diff --cached --name-only).count ){
        git commit -m $Title
        git push -u origin
    }
} else {
    if( $diff.GISTS.count ){
        git -C ".\.GISTS" commit -m $Title -m $Convo
        git -C ".\.GISTS" push -u origin
        git add .
    }
    if( $diff.WIKI.count ){
        git -C ".\.WIKI" commit -m $Title -m $Convo
        git -C ".\.WIKI" push -u origin
        git add .
    }
    if( (git diff --cached --name-only).count ){
        git commit -m $Title -m $Convo
        git push -u origin
    }
}