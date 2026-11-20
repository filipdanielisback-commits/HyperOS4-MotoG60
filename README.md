# HyperOS4-MotoG60

> Experimental research project exploring whether genuine Xiaomi HyperOS 4 components can be adapted to the Motorola Moto G60 (**hanoip**).

**Status: initial device-tree product skeleton committed; not yet buildable. No bootable build is available.**

This repository documents device research, compatibility work, build-system experiments, and verified test results. It does not contain a ROM, recovery installer, or boot image.

## Device target

| Item | Target |
|---|---|
| Device | Motorola Moto G60 |
| Model | XT2135-2 |
| Device codename | hanoip |
| RAM | 6 GB |
| Firmware baseline | S2RIS32.32-20-9-9-2-3 |
| Firmware Android version | Android 12 (firmware source baseline) |
| Port Android target | Android 16 (selected project target; donor build still to be verified) |
| SoC | Qualcomm Snapdragon 732G (SM7150 family) |
| GPU | Qualcomm Adreno 618 |

See [docs/device-target.md](docs/device-target.md) for evidence, source references, and open verification items.

## Current source-tree progress

Initial product-registration files are present in `device/motorola/hanoip/`:

- `AndroidProducts.mk` — registers the experimental product and lunch targets.
- `hyper_hanoip.mk` — declares the product identity.
- `device.mk` — intentionally minimal device product makefile.

These files are scaffolding only. They do not constitute a complete Android device tree and do not make the project buildable.

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
| Bluetooth | Deferred | Excluded from the initial target |

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
├── device/motorola/hanoip/
│   ├── AndroidProducts.mk
│   ├── device.mk
│   └── hyper_hanoip.mk
├── kernel/motorola/sm6150/
├── vendor/motorola/hanoip/
└── docs/
    ├── bring-up-plan.md
    ├── compatibility.md
    ├── device-target.md
    ├── references.md
    └── source-audit.md
```

## Development principles

1. Establish the exact device variant, partition layout, boot chain, firmware base, and Android version before porting.
2. Keep device configuration separate from proprietary vendor files.
3. Preserve upstream copyright notices and licenses.
4. Do not commit proprietary Xiaomi or Motorola files unless redistribution is explicitly permitted.
5. Record reproducible test steps, logs, build identifiers, and regressions.
6. Never label a feature “working” based only on a successful compile or boot animation.

## Safety and recovery

Experimental firmware can make a phone unusable or erase data. Keep a verified backup and a known-good, device-matched recovery path. Do not test on a device whose data cannot be lost. Use only images built for the exact device variant, and have an experienced adult review any physical-device testing.

## Legal notice

This is an unofficial community research project and is not affiliated with Motorola or Xiaomi. HyperOS and related marks belong to Xiaomi; Motorola marks belong to their respective owners. Proprietary components remain the property of their rights holders. Having a firmware copy does not automatically grant permission to redistribute it.

## Contributions

Research notes, reproducible logs, source references, and reviewed device-specific fixes are welcome. Open an issue before submitting large or unverified changes.

See [docs/compatibility.md](docs/compatibility.md), [docs/bring-up-plan.md](docs/bring-up-plan.md), [docs/device-target.md](docs/device-target.md), [docs/source-audit.md](docs/source-audit.md), and [docs/references.md](docs/references.md).
