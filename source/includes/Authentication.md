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
