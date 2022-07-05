function scoop_format($SCOOP_EXPORT) {
        $SCOOP_INSTALL = "scoop install ";
        Write-Output($SCOOP_INSTALL + $SCOOP_EXPORT.Split().GetValue(2).Trim("[]") + "/" + $SCOOP_EXPORT.Split().GetValue(0)) >> $IMPORT_FILE;
}

$FILE_PATH = "scoop.txt";
$IMPORT_FILE = "import.ps1";

if (Test-Path $IMPORT_FILE) {
        Write-Output($IMPORT_FILE);
}
else {
        New-Item $IMPORT_FILE;

}

Clear-Content $IMPORT_FILE;

foreach ($line in Get-Content $FILE_PATH) {
        scoop_format($line);
}
