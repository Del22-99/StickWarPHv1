# StickWarPHv1

A tiny Godot 4.2 starter with mines (gold), units that fight, and capture points.
This repository comes with a GitHub Actions workflow that builds an **Android APK**
and uploads it as an artifact.

## Run locally
1. Install Godot 4.2.x.
2. Open this folder as a project and run `scenes/Main.tscn`.

## Build Android locally
- Ensure Android build support is installed.
- Use the **Android** export preset and export to `build/StickWarPHv1.apk`.

## GitHub Actions build
- Workflow: `.github/workflows/build.yml`
- Triggers: push to `main` or manual dispatch
- Artifact: `StickWarPHv1-Android` ⇒ `StickWarPHv1.apk`
