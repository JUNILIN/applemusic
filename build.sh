#!/bin/bash
ng build --prod --aot --base-href /apple-music-web-player/
sed -i '' "s/const req = event.request;/const req = event.request;if(req.url.toLowerCase().includes('apple')){return;}/" docs/ngsw-worker.js