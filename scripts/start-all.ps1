Write-Host "Iniciando ecosistema ReservaMS..." -ForegroundColor Cyan

docker compose up --build -d

Write-Host ""
Write-Host "Estado de contenedores:" -ForegroundColor Green
docker compose ps

Write-Host ""
Write-Host "Rutas principales:" -ForegroundColor Yellow
Write-Host "Eureka:      http://localhost:8761"
Write-Host "Gateway:     http://localhost:8080/actuator/health"
Write-Host "Kafka UI:    http://localhost:8095"
Write-Host "Swagger Hotel: http://localhost:8083/swagger-ui/index.html"