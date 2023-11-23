# flutter_barcode_sdk


## Getting a License Key for Dynamsoft Barcode Reader
[![](https://img.shields.io/badge/Get-30--day%20FREE%20Trial-blue)](https://www.dynamsoft.com/customer/license/trialLicense/?product=dbr)


## Supported Barcode Symbologies
- Linear Barcodes (1D)
  - Code 39 (including Code 39 Extended)
  - Code 93
  - Code 128
  - Codabar
  - Interleaved 2 of 5
  - EAN-8
  - EAN-13
  - UPC-A
  - UPC-E
  - Industrial 2 of 5

- 2D Barcodes
  - QR Code (including Micro QR Code and Model 1)
  - Data Matrix
  - PDF417 (including Micro PDF417)
  - Aztec Code
  - MaxiCode (mode 2-5)
  - DotCode




## Build Configuration

### Android
Change the minimum Android sdk version to 21 (or higher) in your `android/app/build.gradle` file.

```
minSdkVersion 21
```

### iOS
Add the keys to `ios/Runner/Info.plist` to make camera work:

```
<key>NSCameraUsageDescription</key>
<string>Can I use the camera please?</string>
<key>NSMicrophoneUsageDescription</key>
<string>Can I use the mic please?</string>
```

### Desktop

**Windows & Linux**

Install `CMake` and `platform-specific C++ compiler`.

**macOS**

Install `Xcode`.

To make the demo app work on macOS:
- Disable `com.apple.security.app-sandbox` and enable `com.apple.security.files.user-selected.read-write` in `example/macos/Runner/DebugProfile.entitlements`:
    
  ```xml
  <?xml version="1.0" encoding="UTF-8"?>
  <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
  <plist version="1.0">
  <dict>
    <key>com.apple.security.app-sandbox</key>
    <false/>
    <key>com.apple.security.cs.allow-jit</key>
    <true/>
    <key>com.apple.security.network.server</key>
    <true/>
    <key>com.apple.security.files.user-selected.read-write</key>
    <true/>
  </dict>
  </plist>
  ```    

- Import `DynamsoftBarcodeReader.h` to the bridging header file.
    
  ![macOS bridging header](https://www.dynamsoft.com/codepool/img/2021/flutter/macos-bridging-barcode-header.png)

### Web
In `index.html`, include:

```html
<script src="https://cdn.jsdelivr.net/npm/dynamsoft-javascript-barcode@9.6.20/dist/dbr.js"></script>
```

## API Compatibility
| Methods      | Android |    iOS | Windows | Linux | macOS | Web|
| ----------- | ----------- | ----------- | ----------- |----------- |----------- |----------- |
| `Future<void> setLicense(String license) async`     | :heavy_check_mark:       | :heavy_check_mark:   | :heavy_check_mark:      | :heavy_check_mark:      |:heavy_check_mark:      | :heavy_check_mark:    |
| `Future<List<BarcodeResult>> decodeFile(String filename) async`     | :heavy_check_mark:      | :heavy_check_mark:   | :heavy_check_mark:      |:heavy_check_mark:      | :heavy_check_mark:     |:heavy_check_mark:      |
| `Future<List<BarcodeResult>> decodeImageBuffer(Uint8List bytes, int width, int height, int stride, int format) async`     | :heavy_check_mark:      | :heavy_check_mark:   | :heavy_check_mark:      |:heavy_check_mark:      | :heavy_check_mark:     |:heavy_check_mark:    |
| `Future<int> setBarcodeFormats(int formats) async`     | :heavy_check_mark:       | :heavy_check_mark:   | :heavy_check_mark:       | :heavy_check_mark:       |:heavy_check_mark:      | :heavy_check_mark:     |
| `Future<String> getParameters() async`     | :heavy_check_mark:         | :heavy_check_mark:   | :heavy_check_mark:       | :heavy_check_mark:        |:heavy_check_mark:       | :heavy_check_mark:     |
| `Future<int> setParameters(String params)` async | :heavy_check_mark:         |:heavy_check_mark:   | :heavy_check_mark:       | :heavy_check_mark:        |:heavy_check_mark:      | :heavy_check_mark:     |
| `Future<void> init()` async | :heavy_check_mark:         |:heavy_check_mark:   | :heavy_check_mark:       | :heavy_check_mark:        |:heavy_check_mark:      | :heavy_check_mark:     |














