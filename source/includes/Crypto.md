# Crypto

## Get all available Cryptocurrencies

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/crypto", {
    headers: {
        Authorization: "YOUR_KEY"
    }
});
```

> The above request returns JSON structured like this:

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

This endpoint retrieves all available cryptocurrencies.

### HTTP Request

`GET https://api.walkaisa.dev/crypto`

<aside class="success">
200 - OK
</aside>

## Get a specific Cryptocurrency

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

> The above request returns JSON structured like this:

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

This endpoint retrieves a specific cryptocurrency.

### HTTP Request

`GET https://api.walkaisa.dev/crypto`

### Query Parameters

| Parameter | Description                               |
| --------- | ----------------------------------------- |
| query     | The name or symbol of the cryptocurrency. |

<aside class="success">
200 - OK
</aside>
