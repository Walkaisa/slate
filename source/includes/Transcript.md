# Transcript

## Create transcript

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

> The above request returns JSON structured like this:

```json
{
    "statusCode": 200,
    "response": "BufferBase64"
}
```

This endpoint returns a base64 encoded buffer of the generated html transcript.

### HTTP Request

`GET https://api.walkaisa.dev/transcripts`

### Body Parameters

| Parameter  | Description                                                |
| ---------- | ---------------------------------------------------------- |
| token      | The token of the Discord bot.                              |
| guild_id   | The ID of the guild.                                       |
| channel_id | The ID of the channel.                                     |
| header     | The header of the transcript. (A custom key value object.) |
| footer     | The footer of the transcript. (A array of strings.)        |

<aside class="success">
200 - OK
</aside>
