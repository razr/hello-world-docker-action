# hello-world-docker-action

Various GitHub Action tests

- `two_matrices` and JSON file

```
$ act -j download-sdk -P ubuntu-latest=nektos/act-environments-ubuntu:22.04 -e env.json

$ cat env.json
{
  "event_name": "workflow_dispatch",
  "inputs": {
    "json_file": ".github/workflows/data/wrsdks.json",
    "name": "qemu",
    "release": "24.03"
  }
```
