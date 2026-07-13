# Script para clonar todos los repositorios del proyecto ReservaMS
# Debe ejecutarse desde la carpeta padre donde se desea crear la estructura completa del proyecto.

$baseUrl = "https://github.com/FranciscoRamirezMedina"

$repos = @(
    "reservams-eureka-server",
    "reservams-api-gateway",
    "reservams-auth-service",
    "reservams-user-service",
    "reservams-hotel-service",
    "reservams-room-service",
    "reservams-availability-service",
    "reservams-reservation-service",
    "reservams-payment-service",
    "reservams-notification-service",
    "reservams-review-service",
    "reservams-report-service",
    "reservams-infra"
)

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host " Clonando repositorios ReservaMS" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan

foreach ($repo in $repos) {
    Write-Host ""
    Write-Host "Revisando repositorio: $repo" -ForegroundColor Cyan

    if (Test-Path $repo) {
        Write-Host "El repositorio $repo ya existe. Se omite la clonacion." -ForegroundColor Yellow
    } else {
        git clone "$baseUrl/$repo.git"

        if ($LASTEXITCODE -eq 0) {
            Write-Host "$repo clonado correctamente." -ForegroundColor Green
        } else {
            Write-Host "Error al clonar $repo." -ForegroundColor Red
        }
    }
}

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host " Proceso finalizado" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "Para levantar el sistema completo:"
Write-Host "cd reservams-infra"
Write-Host "docker compose up --build -d"