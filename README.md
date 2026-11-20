# HyperOS4-MotoG60

> Experimental research project exploring whether genuine Xiaomi HyperOS 4 components can be adapted to the Motorola Moto G60 (**hanoip**).

**Status: planning and bring-up research. No bootable build is available yet.**

This repository documents device research, compatibility work, build-system experiments, and verified test results. It does not currently contain a ROM, recovery installer, or boot image.

## Device target

| Item | Target |
|---|---|
| Device | Motorola Moto G60 |
| Device codename | hanoip |
| SoC | Qualcomm Snapdragon 732G (SM7150 family) |
| GPU | Qualcomm Adreno 618 |
| Port target | Genuine Xiaomi HyperOS 4 components, subject to source and redistribution permissions |

Verify the exact device variant, firmware base, partition layout, and hardware details against trusted device sources before using them in a build.

## Compatibility tracker

Statuses are conservative. A component is not marked working until it has been tested on the target device and the result documented.

| Component | Current status | Notes |
|---|---|---|
| Wi-Fi | Not tested | No port build |
| Audio | Not tested | No port build |
| Camera | Not tested | No port build |
| GPU | Not tested | No port build |
| Haptics | Not tested | No port build |
| CPU / thermal | Not tested | No port build |
| Mobile network | Not tested | No port build |
| Modem / telephony | Not tested | No port build |
| Storage | Not tested | No port build |
| Touch / input | Not tested | No port build |
| Bluetooth | Deferred | Explicitly excluded from the initial target |

“Not tested” does not mean working. No compatibility claim is made before testing.

## Installation goals

Potential development pathways, only if supported by the final image format and device:

- **ADB sideload:** install a properly built recovery-compatible update package.
- **Fastboot boot:** temporarily boot a compatible image for development testing, if the bootloader and image format support it.

Neither method is available yet. Do not attempt installation until a maintainer publishes a tested build and device-specific instructions.

## Repository layout

```text
.
├── README.md
├── .gitignore
└── docs/
    ├── compatibility.md
    └── bring-up-plan.md
```

## Development principles

1. Establish the exact device variant, partition layout, boot chain, firmware base, and Android version before porting.
2. Keep device configuration separate from proprietary vendor files.
3. Preserve upstream copyright notices and licenses.
4. Do not commit proprietary Xiaomi or Motorola files unless redistribution is explicitly permitted.
5. Record reproducible test steps, logs, build identifiers, and regressions.
6. Never label a feature “working” based only on a successful compile or boot animation.

## Safety and recovery

Experimental firmware can make a phone unusable or erase data. Keep a verified backup and a known-good, device-matched recovery path. Do not test on a device whose data cannot be lost. Use only images built for the exact device variant.

## Legal notice

This is an unofficial community research project and is not affiliated with Motorola or Xiaomi. HyperOS and related marks belong to Xiaomi; Motorola marks belong to their respective owners. Proprietary components remain the property of their rights holders. Having a firmware copy does not automatically grant permission to redistribute it.

## Contributions

Research notes, reproducible logs, source references, and reviewed device-specific fixes are welcome. Open an issue before submitting large or unverified changes.

See [docs/compatibility.md](docs/compatibility.md) and [docs/bring-up-plan.md](docs/bring-up-plan.md).
