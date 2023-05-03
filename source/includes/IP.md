# IP

## Get IP

Get information about an IP address.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/ip</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/ip", {
    headers: {
        Authorization: "YOUR_KEY"
    },
    params: {
        query: "google.com"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": {
        "ip": "142.251.163.100",
        "type": "Hosting",
        "location": {
            "city": "Colts Neck",
            "zip": "07722",
            "region": "New Jersey",
            "continent": "North America",
            "country": "United States",
            "coordinates": {
                "lat": 40.3029,
                "lon": -74.1828
            },
            "currency": "USD",
            "timezone": "America/New_York",
            "image": "https://www.countryflags.io/US/flat/64.png"
        },
        "organization": {
            "as": "AS15169 Google LLC",
            "asname": "GOOGLE",
            "org": "Google LLC",
            "reverse": "wv-in-f100.1e100.net",
            "isp": "Google LLC"
        }
    }
}
```

### Query Parameters

| Parameter | Type   | Required | Description                         |
| --------- | ------ | -------- | ----------------------------------- |
| `query`   | string | true     | The IP address or domain to lookup. |

<aside class="notice">
The <code>type</code> parameter can either be <code>Residential</code>, <code>Mobile</code>, <code>Hosting</code> or <code>Proxy/VPN</code>.
</aside>
