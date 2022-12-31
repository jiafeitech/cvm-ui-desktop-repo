# cvm-ui-desktop-repo

Cvm UI Desktop apt repository

## USE AT YOUR OWN RISK

This repository is meant for use with Cvm UI Desktop. The packages may work with Ubuntu, however there is a risk of packages in this repository not being compatible with and/or breaking your Ubuntu installation. It is NOT recommended to try to upgrade your Ubuntu installation to Cvm UI Desktop and support for doing so will not be provided.

## Installation Instructions

Run this to add Cvm UI Desktop apt repository

```bash
echo "deb [arch=amd64 trusted=yes] https://jiafeitech.github.io/cvm-ui-desktop-repo/repo/ anal main" | sudo tee /etc/apt/sources.list.d/cvm-ui-desktop.list
```
