if ((Get-Item .\build -ea si) -ne $null) 
{
	rmdir .\build -recurse 
}
mkdir .\build
Get-Item .\src\*\*.nuspec | % {
	.\nuget\NuGet.exe pack $_.FullName -OutputDirectory .\build\
}