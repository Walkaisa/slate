# Transcript

## Create Transcript

Create a new HTML transcript of a Discord channel.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/transcripts</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.post(
    "https://api.walkaisa.dev/transcripts",
    {
        token: "MTA0ODMzMDc1Mzg2NTQzMzEwOQ.G3tbI5...",
        guild_id: "893502016024875008",
        channel_id: "1089202275383255041",
        header: {
            Guild: "Walkaisa Industries",
            Channel: "general"
        },
        footer: ["Powered by Walkaisa Industries"]
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
    "message": "The transcript was successfully created.",
    "response": {
        "url": "https://api.walkaisa.dev/transcripts/893502016024875008/1089202275383255041",
        "buffer": "BufferBase64"
    }
}
```

### Body Parameters

| Parameter    | Type   | Required | Description                   |
| ------------ | ------ | -------- | ----------------------------- |
| `token`      | string | true     | The token of the Discord bot. |
| `guild_id`   | string | true     | The ID of the guild.          |
| `channel_id` | string | true     | The ID of the channel.        |
| `header`     | object | true     | The header of the transcript. |
| `footer`     | array  | true     | The footer of the transcript. |

## Delete Transcript

Delete a HTML transcript of a Discord channel.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/transcripts</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.delete(
    "https://api.walkaisa.dev/transcripts",
    {
        guild_id: "893502016024875008",
        channel_id: "1089202275383255041"
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
    "message": "The transcript was successfully deleted."
}
```

### Body Parameters

| Parameter    | Type   | Required | Description            |
| ------------ | ------ | -------- | ---------------------- |
| `guild_id`   | string | true     | The ID of the guild.   |
| `channel_id` | string | true     | The ID of the channel. |

## Get Transcript

Get a HTML transcript of a Discord channel.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/transcripts/&lt;guild_id&gt;/&lt;channel_id&gt;</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/transcripts/893502016024875008/1089202275383255041", {
    headers: {
        Authorization: "YOUR_KEY"
    }
});
```

> Example response:

```html
<!DOCTYPE html>
<html>
    ...
</html>
```

### URL Parameters

| Parameter    | Type   | Required | Description            |
| ------------ | ------ | -------- | ---------------------- |
| `guild_id`   | string | true     | The ID of the guild.   |
| `channel_id` | string | true     | The ID of the channel. |
