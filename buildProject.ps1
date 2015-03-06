$OutputVariable = (& BuildTools\MakePbo.exe -RT -L -P extDB-Build\Altis_Life.Altis 2>&1)
Write-Host "Output1Begin"
Write-Host $OutputVariable
Write-Host "Output1End"

Write-Host "Output2Begin"
$OutputVariable2 = (& BuildTools\MakePbo.exe -RT -L -P extDB-Build\life_server 2>&1)
Write-Host $OutputVariable2
Write-Host "Output2End"

#BuildTools\MakePbo.exe -RT -L -P extDB-Build\Altis_Life.Altis
#BuildTools\MakePbo.exe -RT -L -P extDB-Build\life_server
