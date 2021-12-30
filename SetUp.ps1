$dir = Get-Location
Set-Location ./src
docker-compose up -d
# give db container some time to initialize
Start-Sleep -Seconds 15
python create_tables.py
Set-Location $dir