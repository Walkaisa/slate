# Crypto

## Get All Cryptocurrencies

Get all available cryptocurrencies.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/crypto</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/crypto", {
    headers: {
        Authorization: "YOUR_KEY"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": [
        {
            "id": "bitcoin",
            "name": "Bitcoin",
            "symbol": "btc"
        },
        {
            "id": "ethereum",
            "name": "Ethereum",
            "symbol": "eth"
        }
    ]
}
```

## Get Specific Cryptocurrency

Get a specific cryptocurrency.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/crypto</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/crypto", {
    headers: {
        Authorization: "YOUR_KEY"
    },
    params: {
        query: "bitcoin"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": {
        "name": "Bitcoin",
        "symbol": "btc",
        "currentPrice": 28027,
        "marketCap": 542605916661,
        "volume": 16614810666,
        "allTimeHigh": 69045,
        "change24h": -1.9446,
        "change7d": 1.87255,
        "change1y": -27.27423,
        "circulatingSupply": 19362131,
        "maxSupply": 21000000,
        "lastUpdate": 1683025622464,
        "sourceURL": "https://www.coinbase.com/price/bitcoin",
        "imageURL": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
        "chart": "BufferBase64"
    }
}
```

### Query Parameters

| Parameter | Type   | Description           |
| --------- | ------ | --------------------- |
| `query`   | string | The name of the coin. |
