<p align="center">
  <img src="https://getkap.co/static/favicon/kap.svg" height="64">
  <h3 align="center">KapMod</h3>
  <p align="center">An open-source screen recorder built with web technology</p>
  <p align="center"><a href="https://circleci.com/gh/wulkano/kap">
    <a href="https://github.com/sindresorhus/xo">
      <img src="https://img.shields.io/badge/code_style-XO-5ed9c7.svg" alt="XO code style">
    </a>
  </p>
</p>

### Is this mod working ?

Yep !! But his is a modification on top of Kap. Make sure you like it first, then you can make your own functions :)

  OS: big sur
  
  Fork from Kap3.3.2 - 10th Sep 2020
  
  [Aperture is a swift lib for MacOs](https://github.com/wulkano/Aperture)
  
Upstream Kap's issue:

[Can not pause](https://github.com/wulkano/aperture-node/issues/5)

### Instalation Steps:

  - Read `How to build` section

  - Especially, Copy Kap.app to Application

  - Fix issues in [issues](https://github.com/ilovejs/KapMod/blob/main/README.md#issue-fix-log) section

### Motivation - WHY ?

- Kap is open source screen recording app on Mac. It's elegant. I want to make use of its UI (Electron)

- I made a default path so no Export waiting time. No convertion when export.

- Aperture is a swift lib for MacOs. Kap use it as binary and js-binding.
  We can optimized parameter as practice.
  
### WHY NOT ?

[Upper souce library no API for Pause Recording](https://github.com/wulkano/aperture-node/issues/5)

Require swift skills & time..


## Get original Kap to learn GUI

**[Download the latest release](https://kap.now.sh/api)** (macOS only)

Or install with [Homebrew-Cask](https://caskroom.github.io):

```
$ brew install --cask kap
```

## Plugins

For more info on how to create plugins, read the [plugins docs](docs/plugins.md).

## Dev builds

Download [`master`](https://kap-artifacts.now.sh/master) or builds for any other branch using: `https://kap-artifacts.now.sh/<branch>`. Note that these builds are unsupported and may have issues.<br>

## Related Repositories

- [Website](https://github.com/wulkano/kap-website)
- [Aperture](https://github.com/wulkano/aperture)

## Newsletter

[Subscribe](http://eepurl.com/ch90_1)

## Thanks

- [▲ Vercel](https://vercel.com/) for fast deployments served from the edge, hosting our website, downloads, and updates.
- [● CircleCI](https://circleci.com/) for supporting the open source community and making our builds fast and reliable.
- [△ Sentry](https://sentry.io/) for letting us know when Kap isn't behaving and helping us eradicate said behaviour.
- Our [contributors](https://github.com/wulkano/kap/contributors) who help maintain Kap and make screen recording and sharing easy.

## New binding for aperture

Looking at the aperture inside `main`, I put a executable file and index.js for module config.

Files:
  index.js
  main/with reference by aperture.js
  device.js

```
yarn remove aperture
yarn add -D file-url
```

Making sure Intelij IDE is used for developing. Since vscode would quit after run, so as from CLI . Bash.

### How to build

`bash build.sh`

Copy Kap.app to Application !!

### TODO:

tempy is still used by recording-history and convert

we can further extend !!

[1] CICD

https://circleci.com/

appcenter

### Issue fix log

[1] spawn error ENMOT

```md
Recording error after setCurrentRecording()
Error: Command failed with ENOENT: /Applications/Kap.app/Contents/Resources/app.asar.unpacked/main/utils/aperture/aperture {"destination":"file:///Users/mike/Movies/Kaptures/a3d6294fb5fae827b4a5a45723412b18.mp4","framesPerSecond":30,"showCursor":false,"highlightClicks":false,"screenId":69733632,"audioDeviceId":"AppleHDAEngineInput:1F,3,0,1,0:1","cropRect":[[419,379],[227,209]]}
spawn /Applications/Kap.app/Contents/Resources/app.asar.unpacked/main/utils/aperture/aperture ENOENT
```

Again, this is `spawn` issue,

* Quick Fix:

U can create subfolder `main/utils/aperture/` and copy binary `aperture` there.

Binary is available after install from yarn, visit node_modules/aperture ...

* Proper Solution: Need to publish `aperture` as separated npm package

like others:
Kap.app/Contents/Resource/app.asar.unpacked/node_modules:
  file-icon


