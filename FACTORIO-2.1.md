# Factorio 2.1 notes

Tested with **Factorio 2.1.23**. Current fork version: **1.0.2**.

## Changes

- Updated fluid-recipe category lists and the Matt’s Library dependency.
- Removed ignored prototype fields.

## Tests

- Five belt tiers transferred items.
- Four underground-pipe tiers transferred fluid across a 20-tile gap.
- Both upgraded substations powered a working assembler; results survived restart/rejoin.

Tests cover the installed tiers and profile, not every possible settings combination.

Tests used private copies of saves and local host/client sessions. Raw player data and test hooks are not shipped.

The 1.0.2 patch repairs changelog formatting and version metadata only. Gameplay files are unchanged.
