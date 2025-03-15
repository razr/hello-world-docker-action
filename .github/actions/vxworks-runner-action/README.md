# `vxworks-runner-action`

Run commands directly on VxWorks using a C interpreter (for the kernel) or a command interpreter (for RTP) from GitHub Actions within a QEMU environment.

With this action, you can:

* run tests in an environment closer to a real embedded system, using QEMU VxWorks emulation;

## Usage

Minimal usage is as follows:

```yaml
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: razr/vxworks-runner-action@v1
      with:
        commands: |
            commands to run
```
