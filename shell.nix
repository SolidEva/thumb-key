{ pkgs ? import <nixpkgs> {config.android_sdk.accept_license = true; config.allowUnfree = true;} }:

(pkgs.buildFHSEnv {
  name = "android-sdk-env";
  targetPkgs = pkgs: (with pkgs;
    [
      androidenv.androidPkgs.androidsdk
      glibc
    ]);
  runScript = "bash";
}).env
