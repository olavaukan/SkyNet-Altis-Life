Write-Host
Write-Host "################################################################################################"
Write-Host "##              Building 'Altis_Life.pbo' using MakePbo.exe...                                ##"
Write-Host "################################################################################################"
Write-Host

BuildTools\MakePbo.exe -RT -L -P extDB-Build\Altis_Life.Altis

Write-Host
Write-Host "################################################################################################"
Write-Host "##              Finished building 'Altis_Life.pbo'                                            ##"
Write-Host "################################################################################################"
Write-Host
Write-Host "################################################################################################"
Write-Host "##              Building 'life_server.pbo' using MakePbo.exe...                               ##"
Write-Host "################################################################################################"
Write-Host

BuildTools\MakePbo.exe -RT -L -P extDB-Build\life_server

Write-Host
Write-Host "################################################################################################"
Write-Host "##              Finished building 'life_server.pbo'                                           ##"
Write-Host "################################################################################################"
Write-Host
