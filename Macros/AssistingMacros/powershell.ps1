param(
[String]$step,
[String]$op
)
Add-Type -A System.IO.Compression.FileSystem
[IO.Compression.ZipFile]::CreateFromDirectory($op+'\temp\', $op+'\'+$step+'.twbx')
Get-ChildItem -Path $op'\temp\' -Include *.* -File -Recurse | foreach { $_.Delete()}
