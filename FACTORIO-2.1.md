# Factorio 2.1 notes

Current fork version: **1.0.4**, based on original Matt's Logistics **0.2.0** with Matt's Library **0.7.0**.

## Upstream compatibility

Retains the fork's turbo crafting changes and adopts upstream's disabled Deadlock beltbox/loader tier registration. Miniloader Redux integration remains supported.

Version 1.0.4 passed native turbo production, recipe/research comparisons, base-only loading and all eight feature-setting combinations in Factorio 2.1.24 headless checks. Only the three turbo recipes differ from the original recipe and technology definitions. A guarded Deadlock test confirmed that disabled registration is not called.

## Turbo crafting

With Space Age and the transport-belts startup setting enabled, the three vanilla turbo recipes accept fluid-capable assemblers as well as foundries, without a pressure restriction.

Verified actual production of turbo belts, underground belts and splitters in:

- Vanilla assembling machines 2 and 3.
- All five Advanced Assembly Machines: Improved tiers.
- Foundries.

Tests used surfaces at Nauvis pressure, Vulcanus pressure and zero pressure. Assembling machine 1 still rejects these fluid recipes. Research unlocks, ingredients, products and crafting times match the original recipes. The base game without Space Age and the disabled-belts startup configuration also load correctly; disabling belts leaves the vanilla turbo restrictions in place.

Version 1.0.3 passed a local host/client production test, followed by save, server restart and rejoin without a detected desync. Other mods can impose their own recipe or machine restrictions.

## Earlier Factorio 2.1 changes

- Updated fluid-recipe category lists and the Matt’s Library dependency.
- Removed ignored prototype fields.

## Earlier integration checks

Earlier integration checks used Factorio 2.1.23; fluid transfer and powered production were repeated with version 1.0.3 headlessly on 2.1.24:

- Five belt tiers transferred items.
- Four underground-pipe tiers transferred fluid across a 20-tile gap.
- Both upgraded substations powered a working assembler; results survived restart/rejoin.

Tests used isolated game profiles and copied worlds.
