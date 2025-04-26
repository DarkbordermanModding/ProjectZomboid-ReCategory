-- VanillaAdjustments
-- https://steamcommunity.com/sharedfiles/filedetails/?id=2886750009
Definition2886750009 = {
  modId = "\\darkborderman.VanillaAdjustments",
  category = {
    Recat_LiquidContainer_Medium = {
      "Base.BeerBottle",
      "Base.BeerImported",
    }
  }
}

if ReCategory == nil then
  ReCategory = {
    Definitions = {}
  }
end
table.insert(ReCategory.Definitions, Definition2886750009)
