$dir = Get-Location
Set-Location ./src
docker-compose down -v
Set-Location $dir