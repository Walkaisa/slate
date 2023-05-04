# Verify

## Create Verify

Create a new verification for a Discord server.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/verify</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.post(
    "https://api.walkaisa.dev/verify",
    {
        client_token: "MTA0ODMzMDc1Mzg2NTQzMzEwOQ.G3tbI5...",
        client_secret: "CDe_sAWwF2cGW...",
        client_id: "1048330753865433109",
        guild_id: "893502016024875008",
        role_id: "1038053343114821652",
        webhook_url: "https://discord.com/api/webhooks/..."
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
    "message": "The verification was successfully created.",
    "response": "https://discord.com/oauth2/authorize?..."
}
```

### Body Parameters

| Parameter       | Type   | Required | Description                                          |
| --------------- | ------ | -------- | ---------------------------------------------------- |
| `client_token`  | string | true     | The token of the Discord bot.                        |
| `client_secret` | string | true     | The secret of the Discord bot.                       |
| `client_id`     | string | true     | The ID of the Discord bot.                           |
| `guild_id`      | string | true     | The ID of the guild.                                 |
| `role_id`       | string | true     | The ID of the role to assign after verification.     |
| `webhook_url`   | string | true     | The URL of the webhook to use for verification logs. |

<aside class="notice">
Add <code>https://api.walkaisa.dev/verify/callback</code> in the OAuth2 redirect URIs of your Discord bot.
</aside>

## Delete Verify

Delete a verification for a Discord server.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-delete">DELETE</i>
		<h6>/verify</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.delete(
    "https://api.walkaisa.dev/verify",
    {
        client_id: "1048330753865433109",
        guild_id: "893502016024875008"
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
    "message": "The verification was successfully deleted."
}
```

### Body Parameters

| Parameter   | Type   | Required | Description                |
| ----------- | ------ | -------- | -------------------------- |
| `client_id` | string | true     | The ID of the Discord bot. |
| `guild_id`  | string | true     | The ID of the guild.       |

## Get All Verify

Get all verifications of a Discord bot.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/verify</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/verify", {
    headers: {
        Authorization: "YOUR_KEY"
    },
    params: {
        client_id: "1048330753865433109"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": [
        {
            "guild": {
                "id": "893502016024875008",
                "name": "Walkaisa Industries"
            },
            "members": [
                {
                    "id": "591382368057819137",
                    "name": "Walkaisa"
                }
            ]
        }
    ]
}
```

### Query Parameters

| Parameter   | Type   | Required | Description                |
| ----------- | ------ | -------- | -------------------------- |
| `client_id` | string | true     | The ID of the Discord bot. |

## Get Specific Verify

Get a specific verification of a Discord bot for a Discord server.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-get">GET</i>
		<h6>/verify</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.get("https://api.walkaisa.dev/verify", {
    headers: {
        Authorization: "YOUR_KEY"
    },
    params: {
        client_id: "1048330753865433109",
        guild_id: "893502016024875008"
    }
});
```

> Example response:

```json
{
    "statusCode": 200,
    "response": {
        "guild": {
            "id": "893502016024875008",
            "name": "Walkaisa Industries"
        },
        "members": [
            {
                "id": "591382368057819137",
                "name": "Walkaisa"
            }
        ]
    }
}
```

### Query Parameters

| Parameter   | Type   | Required | Description                |
| ----------- | ------ | -------- | -------------------------- |
| `client_id` | string | true     | The ID of the Discord bot. |
| `guild_id`  | string | true     | The ID of the guild.       |

## Recover Members

Recover all verified mmebers of a Discord server.

### HTTP Request

<div class="api-endpoint">
	<div class="endpoint-data">
		<i class="label label-post">POST</i>
		<h6>/verify/recover</h6>
	</div>
</div>

> Example request:

```javascript
import Axios from "axios";

const result = await Axios.post(
    "https://api.walkaisa.dev/verify/recover",
    {
        client_id: "1048330753865433109",
        old_guild_id: "893502016024875008",
        new_guild_id: "996889527698341978",
        role_id: "1038053343114821652"
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
    "message": "The verified members have been recovered.",
    "response": {
        "membersVerified": 512,
        "membersSuccess": 501,
        "membersFailed": 11
    }
}
```

### Body Parameters

| Parameter      | Type   | Required | Description                                            |
| -------------- | ------ | -------- | ------------------------------------------------------ |
| `client_id`    | string | true     | The ID of the Discord bot.                             |
| `old_guild_id` | string | true     | The ID of the guild to recover from.                   |
| `new_guild_id` | string | true     | The ID of the guild to recover to.                     |
| `role_id`      | string | true     | The ID of the role to assign to the recovered members. |
