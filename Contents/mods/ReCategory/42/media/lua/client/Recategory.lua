ReCategoryDefinitions = {}

function ReCategoryLoadDefinition(definition)
  print("Start loading ReCategory definition of mod ID: " .. definition.modId)
  local prefix = "Recat_"
  local sm = getScriptManager()
  for category, items in pairs(definition.categories) do
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
  -- Vanilla must load first
  ReCategoryLoadDefinition(DefinitionVanilla)
  for _, definition in ipairs(ReCategoryDefinitions) do
    if getActivatedMods():contains(definition.modId) then
      ReCategoryLoadDefinition(definition)
    end
  end
end

Events.OnGameBoot.Add(ReCategoryOnGameBoot)
