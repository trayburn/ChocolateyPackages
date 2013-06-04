if ((Get-Item .\build -ea si) -ne $null) 
{
	rmdir .\build -recurse 
}
mkdir .\build
.\nuget\NuGet.exe pack .\src\TimRayburn.GitAliases.nuspec -OutputDirectory .\build\