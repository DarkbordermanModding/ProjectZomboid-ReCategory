if ReCategory == nil then
  ReCategory = {
    Definitions = {}
  }
end

function ReCategoryOnGameBoot()
  local prefix = "Recat_"
  local sm = getScriptManager()

  for _, definition in ipairs(ReCategory.Definitions) do
    -- getActivatedMods():contains(definition.modId)
    if definition.modId == "vanilla" then
      for category, items in pairs(definition.category) do
        print("fuck" .. category)
        for _, item in ipairs(items) do
          local origin = sm:getItem(item):getDisplayCategory()
          if string.find(origin, "^" .. prefix) then
            print("Duplicated entry " .. item .. " (" .. origin .. "/" .. category .. ")")
          end
          sm:getItem(item):DoParam("DisplayCategory=" .. category)
        end
      end
    end
  end
end

Events.OnGameBoot.Add(ReCategoryOnGameBoot)
