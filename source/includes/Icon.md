# Icon

## Get All Icons

Get all available icons.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/icons</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/icons");
```

> Example response:

```json
{
    "statusCode": 200,
    "response": ["success.png", "error.png", "blank.png", "loading.gif", "..."]
}
```

## Get Specific Icons

Get a specific icon.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/icons/&lt;name&gt;/&lt;color?&gt;</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/icons/success.png");

// or

const result = await Axios.get("https://api.walkaisa.dev/icons/success.png/%23ff003c");
```

> Example response:

```string
Image File
```

### URL Parameters

| Parameter | Type   | Required | Description            |
| --------- | ------ | -------- | ---------------------- |
| `name`    | string | true     | The name of the icon.  |
| `color`   | string | false    | The color of the icon. |
