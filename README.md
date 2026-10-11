# Garagecudrefin
This is the Hugo definition for https://garagecudrefin.ch

:umbrella: Hosted on Page at cloudflare.com

## Local preview

`./run-local.sh` checks that Hugo is installed, initialises git submodules when `.gitmodules` is present, and starts the development server with drafts enabled.

```bash
./run-local.sh
./run-local.sh 8080
```

The server listens on `127.0.0.1`. The port defaults to `1313`, or to the `PORT` environment variable. Pass a port as the first argument to override it.

If Hugo is missing, the script says how to install it on macOS: `brew install hugo`. 

