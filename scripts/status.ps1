Write-Host "Estado de contenedores ReservaMS:" -ForegroundColor Cyan

docker compose ps

Write-Host ""
Write-Host "Verificando rutas principales:" -ForegroundColor Yellow

try {
    $gateway = Invoke-RestMethod "http://localhost:8080/actuator/health"
    Write-Host "API Gateway: $($gateway.status)" -ForegroundColor Green
} catch {
    Write-Host "API Gateway: ERROR" -ForegroundColor Red
}

try {
    $eureka = Invoke-WebRequest "http://localhost:8761" -UseBasicParsing
    Write-Host "Eureka Server: OK" -ForegroundColor Green
} catch {
    Write-Host "Eureka Server: ERROR" -ForegroundColor Red
}

try {
    $kafkaUi = Invoke-WebRequest "http://localhost:8095" -UseBasicParsing
    Write-Host "Kafka UI: OK" -ForegroundColor Green
} catch {
    Write-Host "Kafka UI: ERROR" -ForegroundColor Red
}