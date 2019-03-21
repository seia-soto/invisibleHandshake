# invisibleHandshake

Ignore Korea Communications Commission's prvention policy that filters SNI field,
by spliting transmission units of connection.

## Table of Contents

- [Theory](#theory)
- [Installation](#installation)
  - [Download Pre-built package](#prebuilt)
  - [Build yourself](#build)

## Theory

By applying max transmission units value to 400, SNI field goes with two packet,
finally DPI machines couldn't work with splited SNI fields.

## Installation

To use this application, you can choose one of two available options.

### Prebuilt

By downloading pre-built packages, you can use directly without installing any
additional developing dependencies.

- [Download standard installer](https://app.seia.io/invisibleHandshake/distributions/invisibleHandshake-Setup-win32ia.exe)
- [Download offline installer](https://app.seia.io/invisibleHandshake/distributions/invisibleHandshake-OfflineSetup-win32ia.exe)

### Build

To build this package yourself, you can simply run below.

```
npm install --save-dev
npm run build
```

Then you can get output from `dist` folder.
