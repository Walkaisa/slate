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
    "response": "BufferBase64"
}
```

### Body Parameters

| Parameter  | Type   | Description                   |
| ---------- | ------ | ----------------------------- |
| token      | string | The token of the Discord bot. |
| guild_id   | string | The ID of the guild.          |
| channel_id | string | The ID of the channel.        |
| header     | object | The header of the transcript. |
| footer     | array  | The footer of the transcript. |
