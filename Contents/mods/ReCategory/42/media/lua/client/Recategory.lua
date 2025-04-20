ReCategory = {}

function ReCategory.OnGameBoot()
  local sm = getScriptManager()
  -- local allItems = getScriptManager():getAllItems()
  -- for i=0, allItems:size()-1 do
  --   local item = allItems:get(i)
  --   item:DoParam("DisplayCategory=" .. "Recat_Debug")
  -- end
  for category, items in pairs(DBMRecategoryDefinitionV2) do
    for _, item in ipairs(items) do
      sm:getItem(item):DoParam("DisplayCategory=" .. category)
    end
  end
end

Events.OnGameBoot.Add(ReCategory.OnGameBoot)
