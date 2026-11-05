-- Additional support for other modded items

-- Turbo logistics can use the same fluid-capable assemblers as express logistics.
-- Keep the existing categories so foundries and other compatible machines still work.
if mods["space-age"] then
    for _, name in ipairs({"turbo-transport-belt", "turbo-underground-belt", "turbo-splitter"}) do
        local recipe = data.raw.recipe[name]
        if recipe then
            recipe.categories = recipe.categories or {"crafting"}
            local has_fluid_crafting = false
            for _, category in ipairs(recipe.categories) do
                if category == "crafting-with-fluid" then has_fluid_crafting = true end
            end
            if not has_fluid_crafting then
                table.insert(recipe.categories, "crafting-with-fluid")
            end
            recipe.surface_conditions = nil
        end
    end
end

if data.raw.item["advanced-processing-unit"] then
    mattslib.recipe.replace_ingredient("extreme-express-splitter", "processing-unit", "advanced-processing-unit", 10)
    mattslib.recipe.replace_ingredient("ultimate-splitter", "processing-unit", "advanced-processing-unit", 20)
end
