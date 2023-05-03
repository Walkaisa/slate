# Weather

## Get Weather

Get information about the weather by location.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/weather</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/weather", {
    headers: {
        Authorization: "YOUR_KEY"
    },
    params: {
        query: "new york"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": {
        "location": {
            "name": "New York",
            "region": "New York",
            "country": "United States of America",
            "lat": 40.71,
            "lon": -74.01,
            "tz_id": "America/New_York",
            "localtime_epoch": 1683113392,
            "localtime": "2023-05-03 7:29"
        },
        "current": {
            "last_updated_epoch": 1683112500,
            "last_updated": "2023-05-03 07:15",
            "temp_c": 8.3,
            "temp_f": 46.9,
            "is_day": 1,
            "condition": {
                "text": "Partly cloudy",
                "icon": "//cdn.weatherapi.com/weather/64x64/day/116.png",
                "code": 1003
            },
            "wind_mph": 2.2,
            "wind_kph": 3.6,
            "wind_degree": 258,
            "wind_dir": "WSW",
            "pressure_mb": 999,
            "pressure_in": 29.49,
            "precip_mm": 0,
            "precip_in": 0,
            "humidity": 76,
            "cloud": 25,
            "feelslike_c": 6.5,
            "feelslike_f": 43.6,
            "vis_km": 16,
            "vis_miles": 9,
            "uv": 2,
            "gust_mph": 8.5,
            "gust_kph": 13.7
        }
    }
}
```

### Query Parameters

| Parameter | Type   | Required | Description                         |
| --------- | ------ | -------- | ----------------------------------- |
| `query`   | string | true     | The location to lookup the weather. |
