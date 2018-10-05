# MyExhange

>App Conversao de Moeda, utilizando a api [CurrencyDataFeed.Com](https://currencydatafeed.com/)

![ruby](https://img.shields.io/badge/Ruby-2.5.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.2.1-red.svg)
![docker](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
![codeship](https://img.shields.io/codeship/d6c1ddd0-16a3-0132-5f85-2e35c05e22b1.svg)

### [Acesse o app online](https://myexchangejm.herokuapp.com)

Este e um app de Conversao de Moeda.


![MyExxhange](https://github.com/jorgemtoledo/currency_exchange/blob/master/public/image.png)

Nesse app de conversao de moeda, o usuario precisa escolher a moeda local ou de destino, quantidade e depois escolher para qual moeda vai precisar converter.

## Requisitos
- Docker
- Codeship
- Clonar o projeto numa pasta em sua maquina

## Instalacao
```
docker-compose build
docker-compose run --rm website rails db:create db:migrate
docker-compose up

Acesso o app na url localhost:3000.Acesso o app na url localhost:3000.
