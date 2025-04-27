ReCategoryDefinitions = {}

function ReCategoryLoadDefinition(categories)
  local prefix = "Recat_"
  local sm = getScriptManager()
  for category, items in pairs(categories) do
    for _, item in ipairs(items) do
      local origin = sm:getItem(item):getDisplayCategory()
      if string.find(origin, "^" .. prefix) then
        print("Duplicated entry " .. item .. " (" .. origin .. "/" .. category .. ")")
      end
      sm:getItem(item):DoParam("DisplayCategory=" .. category)
    end
  end
end

function ReCategoryOnGameBoot()
  for _, definition in ipairs(ReCategoryDefinitions) do
    if definition.modId == "vanilla" or getActivatedMods():contains(definition.modId) then
      ReCategoryLoadDefinition(definition.category)
    end
  end
end

Events.OnGameBoot.Add(ReCategoryOnGameBoot)
