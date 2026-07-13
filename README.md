\# ReservaMS Infra



Repositorio de infraestructura y orquestación del proyecto \*\*ReservaMS\*\*.



Este repositorio contiene el archivo `docker-compose.yml` necesario para levantar el ecosistema completo de microservicios desarrollado para el proyecto semestral.



\## Descripción general



ReservaMS es un sistema backend de reservas hoteleras basado en arquitectura de microservicios.  

Cada microservicio se mantiene en un repositorio independiente, por lo que este repositorio centraliza únicamente la infraestructura necesaria para ejecutar el sistema completo.

## Clonar todos los repositorios

Como el proyecto utiliza un repositorio independiente por cada microservicio, se agregó un script de apoyo para facilitar la clonación completa del ecosistema.

El script se encuentra en:

```text
scripts/clone-all.ps1

\## Servicios incluidos



El archivo `docker-compose.yml` levanta los siguientes servicios:



\- Zookeeper

\- Kafka

\- Kafka UI

\- Eureka Server

\- API Gateway

\- Auth Service

\- User Service

\- Hotel Service

\- Room Service

\- Availability Service

\- Reservation Service

\- Payment Service

\- Notification Service

\- Review Service

\- Report Service



\## Puertos principales



| Servicio | Puerto |

|---|---:|

| API Gateway | 8080 |

| Eureka Server | 8761 |

| Kafka UI | 8095 |

| Auth Service | 8081 |

| User Service | 8082 |

| Hotel Service | 8083 |

| Room Service | 8084 |

| Availability Service | 8085 |

| Reservation Service | 8086 |

| Payment Service | 8087 |

| Notification Service | 8088 |

| Review Service | 8089 |

| Report Service | 8090 |



\## Requisitos previos



Antes de ejecutar este repositorio se necesita:



\- Docker Desktop instalado.

\- MySQL iniciado localmente, por ejemplo con Laragon.

\- Los repositorios de microservicios clonados en la misma carpeta raíz.



La estructura esperada es:



```txt

ReservaMS/

├── reservams-infra/

├── reservams-eureka-server/

├── reservams-api-gateway/

├── reservams-auth-service/

├── reservams-user-service/

├── reservams-hotel-service/

├── reservams-room-service/

├── reservams-availability-service/

├── reservams-reservation-service/

├── reservams-payment-service/

├── reservams-notification-service/

├── reservams-review-service/

└── reservams-report-service/

