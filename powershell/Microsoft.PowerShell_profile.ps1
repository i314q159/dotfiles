# alias
Set-Alias open explorer
# Set-Alias tm recycle-bin

# scoop-completion
# Import-Module scoop-completion

# scoop-search
# Invoke-Expression (&scoop-search --hook)

# starship
Invoke-Expression (&starship init powershell)

# repo
# function repo {
#     python d:/repo/repo $args
# }

# ghproxy
function ghproxy-git {
    git clone https://ghproxy.net/$args
}
function ghproxy-aria2c {
    aria2c https://ghproxy.net/$args
}

# magnet link download
function hacg {
    $hash = $args[0]
    if ($hash -match '^[a-fA-F0-9]{40}$') {
        $magnet = "magnet:?xt=urn:btih:$hash"
        aria2c "$magnet"
    } else {
        Write-Error "Invalid hash format. Please provide a 40-character hex hash."
    }
}

# Rename Wallpapers
function rename6 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Path
    )

    $chars = 'abcdefghijklmnopqrstuvwxyz0123456789'
    
    Get-ChildItem -Path $Path -File | ForEach-Object {
        try {
            # Generate random 6-char name
            $newName = -join (1..6 | ForEach-Object { $chars[(Get-Random -Maximum $chars.Length)] })
            
            # Keep the original extension
            $extension = $_.Extension
            $newFullName = $newName + $extension
            
            # Ensure the new name doesn't exist
            while (Test-Path (Join-Path $_.Directory.FullName $newFullName)) {
                $newName = -join (1..6 | ForEach-Object { $chars[(Get-Random -Maximum $chars.Length)] })
                $newFullName = $newName + $extension
            }
            
            # Use Move-Item instead of Rename-Item for better handling of special characters
            Move-Item -LiteralPath $_.FullName -Destination (Join-Path $_.Directory.FullName $newFullName) -Force
            Write-Host "Renamed '$($_.Name)' to '$newFullName'"
        }
        catch {
            Write-Error "Failed to rename '$($_.Name)': $_"
        }
    }
}
