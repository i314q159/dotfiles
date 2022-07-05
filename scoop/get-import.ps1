function scoop_format($SCOOP_EXPORT) {
        $SCOOP_INSTALL = "scoop install ";
        Write-Output($SCOOP_INSTALL + $SCOOP_EXPORT.Split().GetValue(2).Trim("[]")+ "/" + $SCOOP_EXPORT.Split().GetValue(0)) >> import.ps1;
}

$FILE_PATH = "scoop.txt"
Clear-Content import.ps1;
foreach ($line in Get-Content $FILE_PATH) {
        scoop_format($line);
}
