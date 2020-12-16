<p align="center">
  <img src="https://getkap.co/static/favicon/kap.svg" height="64">
  <h3 align="center">KapMod</h3>
  <p align="center">An open-source screen recorder built with web technology</p>
  <p align="center"><a href="https://circleci.com/gh/wulkano/kap">
    <a href="https://github.com/sindresorhus/xo">
      <img src="https://img.shields.io/badge/code_style-XO-5ed9c7.svg" alt="XO code style">
    </a>
  </p>
  <p>
    Based on Kap3.3.2 - 10th Sep 2020<br>
    <a alt="Aperture" href="https://github.com/wulkano/Aperture">Aperture is a swift lib for MacOs</a>
  </p>
</p>

## Get Kap

**[Download the latest release](https://kap.now.sh/api)** (macOS only)

Or install with [Homebrew-Cask](https://caskroom.github.io):

```
$ brew install --cask kap
```

## Contribute

Read the [contribution guide](contributing.md).

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

### TODO:

tempy is still used by recording-history and convert

we can further extend !!

[2] CICD

https://circleci.com/

appcenter



