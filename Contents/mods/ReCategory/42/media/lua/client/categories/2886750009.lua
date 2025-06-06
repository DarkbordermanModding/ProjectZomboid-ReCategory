-- VanillaAdjustments
-- https://steamcommunity.com/sharedfiles/filedetails/?id=2886750009
require("recategory")

table.insert(
  ReCategoryDefinitions,
  {
    modId = "\\darkborderman.VanillaAdjustments",
    categories = {
      Recat_Food_Perishable = {
        "Base.Frog",
      },
      Recat_Cooking_Tool = {
        "Base.CheeseGrater",
      },
      Recat_LiquidContainer_Medium = {
        "Base.BeerBottle",
        "Base.BeerImported",
        "Base.BeerPack",
      },
      Recat_Fishing_Lure = {
        "Base.Ladybug",
      },
    }
  }
)
