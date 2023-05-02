---
title: Walkaisa API

language_tabs: # must be one of https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers
    - javascript

toc_footers:
    - <a href='#'>Sign Up for a Developer Key</a>
    - <a href='https://github.com/slatedocs/slate'>Documentation Powered by Slate</a>

includes:
    - errors

search: true

code_clipboard: true

meta:
    - name: description
      content: Documentation for the Kittn API
---

# Introduction

Welcome to the Kittn API! You can use our API to access Kittn API endpoints, which can get information on various cats, kittens, and breeds in our database.

We have language bindings in Shell, Ruby, Python, and JavaScript! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

This example API documentation page was created with [Slate](https://github.com/slatedocs/slate). Feel free to edit it and use it as a base for your own API's documentation.

# Authentication

> To authorize, use this code:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev", {
    headers: {
        Authorization: "YOUR_KEY"
    }
});
```

> Make sure to replace `YOUR_KEY` with your API key.

The API uses keys to allow access to the API. You can receive a new API key by joining our [Discord](https://walkaisa.dev/discord).

The API expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: YOUR_KEY`

<aside class="notice">
You must replace <code>YOUR_KEY</code> with your personal API key.
</aside>

# Crypto

## Get All Cryptocurrencies

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/", {
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

This endpoint retrieves all cryptocurrencies.

### HTTP Request

`GET https://api.walkaisa.dev/crypto`

<aside class="success">
200 - OK
</aside>

## Get A Specific Cryptocurrency

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/", {
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
        "name": "",
        "symbol": "",
        "currentPrice": "",
        "marketCap": "",
        "volume": "",
        "allTimeHigh": "",
        "change24h": "",
        "change7d": "",
        "change1y": "",
        "circulatingSupply": "",
        "maxSupply": "",
        "lastUpdate": "",
        "sourceURL": "https://www.coinbase.com/price/bitcoin",
        "imageURL": "",
        "chart": "Buffer64"
    }
}
```

This endpoint retrieves a specific kitten.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/kittens/<ID>`

### URL Parameters

| Parameter | Description                      |
| --------- | -------------------------------- |
| ID        | The ID of the kitten to retrieve |

## Delete a Specific Kitten

```ruby
require 'kittn'

api = Kittn::APIClient.authorize!('meowmeowmeow')
api.kittens.delete(2)
```

```python
import kittn

api = kittn.authorize('meowmeowmeow')
api.kittens.delete(2)
```

```shell
curl "http://example.com/api/kittens/2" \
  -X DELETE \
  -H "Authorization: meowmeowmeow"
```

```javascript
const kittn = require("kittn");

let api = kittn.authorize("meowmeowmeow");
let max = api.kittens.delete(2);
```

> The above command returns JSON structured like this:

```json
{
    "id": 2,
    "deleted": ":("
}
```

This endpoint deletes a specific kitten.

### HTTP Request

`DELETE http://example.com/kittens/<ID>`

### URL Parameters

| Parameter | Description                    |
| --------- | ------------------------------ |
| ID        | The ID of the kitten to delete |
