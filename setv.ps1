param(
    [Parameter(Mandatory=$true)]
    $newVersion
)

Get-Item .\src\nuspec\*.nuspec | % {
    $doc = [xml] (Get-Content $_)
    $doc.package.metadata.version = $newVersion
    $writer = New-Object System.Xml.XmlTextWriter($_,$null)
    $writer.Formatting = [System.Xml.Formatting]::Indented
    $doc.Save($writer)
}