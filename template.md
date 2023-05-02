# User

## Create User

Create a new API user.

### HTTP request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/users</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.post(
    "https://api.walkaisa.dev/users",
    {
        name: "Walkaisa"
    },
    {
        headers: {
            Authorization: "YOUR_KEY"
        }
    }
);
```

> Example response:

```json
{
    "statusCode": 200,
    "response": {
        "id": "be31d4fb-0f48-4594-925f-8adc33804128",
        "name": "Walkaisa",
        "createdAt": "2023-04-08T00:27:00.609+00:00",
        "token": "zMmO2hTVWLe-15M6YEty3uo-V4tlvpeB4jS"
    }
}
```

### Body Parameters

| Parameter | Type   | Description           |
| --------- | ------ | --------------------- |
| `name`    | string | The name of the user. |
