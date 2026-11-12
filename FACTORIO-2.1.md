# Factorio 2.1 notes

Current fork version: **1.0.5**, based on original Matt's Logistics **0.2.0** with Matt's Library **0.7.0**.

## Upstream compatibility

Retains the fork's turbo crafting changes and restores the original five optional Deadlock loader/beltbox tiers. Miniloader Redux integration remains separate and supported.

## Optional Deadlock integration

Compatible providers may use the original `deadlock-beltboxes-loaders` ID or the `deadlock-beltboxes-loaders-factorio21` successor ID. Optional dependencies establish load order. All five additional tier names, recipes, research and artwork remain unchanged. With Space Age, Express upgrades to Turbo, then Ultra Fast; without Space Age, Express upgrades directly to Ultra Fast. The provider's independent loader/beltbox switches and Matt's transport-belts switch are respected.

Native Factorio 2.1.24 headless checks covered all nine tiers with Space Age:

- 144 player placements covering four rotations and belt/chest adjacency snapping.
- 36 physical input/output transfer layouts, each moving 20 rare iron plates through rare loaders and belts into the destination chest.
- 18 powered rare beltboxes, stacking and unstacking on every tier with the actual configured recipe inputs and outputs.
- 72 real construction-robot builds from four rotations and two mirrored variants of nine-tier blueprints.
- Five quality-aware auto-unstack mining cases, including conservation of mixed fish, bioflux and spoilage inventory.
- Eight fresh-world variants: original/successor provider, loaders disabled, beltboxes disabled, both disabled, Matt's belts disabled, base without Space Age and no Deadlock provider.

Native prototype migration metadata from an isolated older save retained the five additional tier entity, item, recipe and technology IDs rather than removing them. Raw copied saves, private fixtures and logs are kept outside this repository. These checks are headless functional checks; they do not claim new graphical or multiplayer validation.

Version 1.0.4 separately passed turbo production, recipe/research comparisons, base-only loading and all eight Matt's feature-setting combinations. Its turbo crafting implementation is retained.

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
