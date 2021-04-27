$Path = "D:\temp\hello\fail"
$Text = "hi"
$PathArray = @()
$Results = "D:\temp\hello\filetomove.txt"


# This code snippet gets all the files in $Path that end in ".txt".
Get-ChildItem $Path -Filter "*.txt" |
Where-Object { $_.Attributes -ne "Directory"} |
ForEach-Object {
If (Get-Content $_.FullName | Select-String -Pattern $Text) {
$PathArray += $_.FullName

}
}
Write-Host
$PathArray | ForEach-Object {$_}  >> $Results

Move-Item -Path $(Get-Content $Results) -Destination "D:\temp\hello\staging"