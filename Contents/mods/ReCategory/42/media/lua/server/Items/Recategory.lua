local sm = getScriptManager()

for category, items in pairs(DBMRecategoryDefinition) do
  for _, item in ipairs(items) do
    sm:getItem(item):DoParam("DisplayCategory=" .. category)
  end
end
