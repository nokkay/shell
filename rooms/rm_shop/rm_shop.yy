{
  "$GMRoom":"",
  "%Name":"rm_shop",
  "creationCodeFile":"",
  "inheritCode":true,
  "inheritCreationOrder":true,
  "inheritLayers":false,
  "instanceCreationOrder":[
    {"name":"inst_3C699EE5","path":"rooms/rm_shop/rm_shop.yy",},
    {"name":"inst_30B0DD40","path":"rooms/rm_shop/rm_shop.yy",},
    {"name":"inst_1F813FE1","path":"rooms/rm_shop/rm_shop.yy",},
    {"name":"inst_F9B4ABF","path":"rooms/rm_shop/rm_shop.yy",},
    {"name":"inst_7D7F9AF","path":"rooms/rm_shop/rm_shop.yy",},
    {"name":"inst_51FD5509","path":"rooms/rm_shop/rm_shop.yy",},
  ],
  "isDnd":false,
  "layers":[
    {"$GMRInstanceLayer":"","%Name":"Instances","depth":0,"effectEnabled":true,"effectType":null,"gridX":8,"gridY":8,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"instances":[
        {"$GMRInstance":"","%Name":"inst_3C699EE5","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_3C699EE5","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_room","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"rm_woods",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"transition_type","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"TRANS_TYPE.FADE",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_x","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"2159",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_room_exit","path":"objects/obj_room_exit/obj_room_exit.yy",},"propertyId":{"name":"target_y","path":"objects/obj_room_exit/obj_room_exit.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"1281",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":4.0,"scaleY":1.0,"x":544.0,"y":560.0,},
        {"$GMRInstance":"","%Name":"inst_30B0DD40","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":6,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_30B0DD40","objectId":{"name":"obj_shopkeep","path":"objects/obj_shopkeep/obj_shopkeep.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"p_entity","path":"objects/p_entity/p_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/p_entity/p_entity.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"[\"Welcome to my shop... Keep your stay brief.\",1,id,0,[\"1:choice 1\", \"2:choice 2\"]]",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":448.0,"y":448.0,},
        {"$GMRInstance":"","%Name":"inst_1F813FE1","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":2,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_1F813FE1","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"ITEM.BOW",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_cost","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"5",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_amount","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"15",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"p_entity","path":"objects/p_entity/p_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/p_entity/p_entity.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"[\"Bow [5g for 15]\\nFeathers freshly plucked from the poor birds outside\",1,-1,0,[\"7:Purchase\",\"0:No thanks\"]]",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":608.0,"y":296.0,},
        {"$GMRInstance":"","%Name":"inst_F9B4ABF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":3,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_F9B4ABF","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_cost","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"25",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_amount","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"0",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"ITEM.HOOK",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"p_entity","path":"objects/p_entity/p_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/p_entity/p_entity.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"[\"Hook [25g]\\nA grappling hook!\",1,-1,0,[\"7:Purchase\",\"0:No thanks\"]]",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":672.0,"y":296.0,},
        {"$GMRInstance":"","%Name":"inst_7D7F9AF","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":1,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_7D7F9AF","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"properties":[
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_cost","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"5",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item_amount","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"5",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_shopitem","path":"objects/obj_shopitem/obj_shopitem.yy",},"propertyId":{"name":"item","path":"objects/obj_shopitem/obj_shopitem.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"ITEM.BOMB",},
            {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"p_entity","path":"objects/p_entity/p_entity.yy",},"propertyId":{"name":"entity_activate_args","path":"objects/p_entity/p_entity.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"[\"Bomb [5g for 5]\\nLegally dubiously cheap?\",1,-1,0,[\"7:Purchase\",\"0:No thanks\"]]",},
          ],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":544.0,"y":296.0,},
        {"$GMRInstance":"","%Name":"inst_51FD5509","colour":4294967295,"frozen":false,"hasCreationCode":false,"ignore":false,"imageIndex":0,"imageSpeed":1.0,"inheritCode":false,"inheritedItemId":null,"inheritItemSettings":false,"isDnd":false,"name":"inst_51FD5509","objectId":{"name":"obj_spawnpoint","path":"objects/obj_spawnpoint/obj_spawnpoint.yy",},"properties":[],"resourceType":"GMRInstance","resourceVersion":"2.0","rotation":0.0,"scaleX":1.0,"scaleY":1.0,"x":608.0,"y":528.0,},
      ],"layers":[],"name":"Instances","properties":[],"resourceType":"GMRInstanceLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRTileLayer":"","%Name":"Sounds","depth":95,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"Sounds","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
          -1216,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,
          -45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,
          -35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,
          -45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,
          -35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,
          -45,1073741826,-35,-2147483648,-45,1073741826,-35,-2147483648,-45,1073741826,-819,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_sound","path":"tilesets/ts_sound/ts_sound.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"$GMRTileLayer":"","%Name":"Collision","depth":100,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":false,"layers":[],"name":"Collision","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":45,"SerialiseWidth":80,"TileCompressedData":[
          -46,0,-34,-2147483648,-46,0,-34,-2147483648,-46,0,-34,-2147483648,-46,0,-34,-2147483648,-16,0,-46,1,
          -18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,
          -16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,
          -2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,
          0,-46,1,-18,-2147483648,-16,0,-46,1,-18,-2147483648,-16,0,-3,1,-27,0,-13,-2147483648,-3,1,-18,-2147483648,
          -16,0,-3,1,-27,0,-13,-2147483648,-3,1,-18,-2147483648,-16,0,-3,1,-27,0,-13,-2147483648,-3,1,-18,-2147483648,
          -16,0,-3,1,-27,0,-8,-2147483648,-5,0,-3,1,-18,-2147483648,-16,0,-35,1,-3,-2147483648,-5,0,-3,1,-18,-2147483648,
          -16,0,-35,1,1,0,-7,-2147483648,-3,1,-18,-2147483648,-16,0,-35,1,1,0,-7,-2147483648,-3,1,-18,-2147483648,
          -16,0,-35,1,-8,-2147483648,-3,1,-18,-2147483648,-16,0,-3,1,-27,0,-13,-2147483648,-3,1,-18,-2147483648,
          -16,0,-4,1,-26,0,-12,-2147483648,-4,1,-18,-2147483648,-16,0,-4,1,-26,0,-12,-2147483648,-4,1,-18,-2147483648,
          -16,0,-4,1,-26,0,-12,-2147483648,-4,1,-18,-2147483648,-16,0,-4,1,-26,0,-12,-2147483648,-4,1,-18,-2147483648,
          -16,0,-4,1,-26,0,-12,-2147483648,-4,1,-18,-2147483648,-16,0,-4,1,-26,0,-12,-2147483648,-4,1,-34,-2147483648,
          -3,1,-39,-2147483648,-4,1,-34,-2147483648,-3,1,-39,-2147483648,-4,1,-34,-2147483648,-18,1,-8,-2147483648,
          -20,1,-34,-2147483648,-18,1,-8,0,-20,1,-51,-2147483648,-10,1,-677,-2147483648,
        ],"TileDataFormat":1,},"tilesetId":{"name":"ts_collision","path":"tilesets/ts_collision/ts_collision.yy",},"userdefinedDepth":false,"visible":false,"x":0,"y":0,},
    {"$GMRLayer":"","%Name":"Tiles","depth":285,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[
        {"$GMRTileLayer":"","%Name":"Counter","depth":383,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Counter","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[-384,-2147483648,2,40,0,-23,-2147483648,-15,20,3,77,0,-2147483648,-3,0,-19,-2147483648,-15,97,2,98,0,-454,-2147483648,],"TileDataFormat":1,},"tilesetId":{"name":"ts_building","path":"tilesets/ts_building/ts_building.yy",},"userdefinedDepth":true,"visible":true,"x":0,"y":0,},
        {"$GMRTileLayer":"","%Name":"Furniture","depth":483,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Furniture","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
              -24,0,-16,-2147483648,-24,0,-16,-2147483648,-24,0,-16,-2147483648,-24,0,-16,-2147483648,-24,0,-16,-2147483648,
              -24,0,-16,-2147483648,-24,0,-16,-2147483648,-30,0,-10,-2147483648,-30,0,-10,-2147483648,-30,0,-10,-2147483648,
              -30,0,-10,-2147483648,-30,0,-10,-2147483648,-24,0,-16,-2147483648,-9,0,1,18,-14,0,-5,-2147483648,1,18,
              -10,-2147483648,-9,0,1,36,-14,0,-5,-2147483648,1,36,-10,-2147483648,-9,0,1,54,-14,0,-5,-2147483648,1,
              54,-10,-2147483648,-24,0,-16,-2147483648,-24,0,-216,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"ts_building","path":"tilesets/ts_building/ts_building.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"$GMRTileLayer":"","%Name":"Side_Walls","depth":583,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Side_Walls","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
              -27,0,-13,-2147483648,-27,0,-13,-2147483648,-8,0,1,18,-18,0,-3,-2147483648,1,18,-9,-2147483648,-8,0,
              1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,
              0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,
              0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,
              0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,
              0,1,36,-18,0,-3,-2147483648,1,36,-9,-2147483648,-8,0,1,72,-18,0,-3,-2147483648,1,72,-9,-2147483648,-8,
              0,1,43,-18,0,-3,-2147483648,1,43,-9,-2147483648,-8,0,1,43,-18,0,-3,-2147483648,1,43,-9,-2147483648,-8,
              0,1,43,-18,0,-3,-2147483648,1,43,-9,-2147483648,-8,0,1,43,-18,0,-3,-2147483648,1,43,-9,-2147483648,-8,
              0,1,61,-18,0,-3,-2147483648,1,61,-209,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"ts_building","path":"tilesets/ts_building/ts_building.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"$GMRTileLayer":"","%Name":"Front_Walls","depth":683,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Front_Walls","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
              -29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,
              -29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,
              -29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,-29,0,-11,-2147483648,
              -29,0,-11,-2147483648,-29,0,-11,-2147483648,-8,0,1,1,-7,2,1,3,-4,0,1,1,-8,2,1,3,-9,-2147483648,-29,0,
              -11,-2147483648,-29,0,-131,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"ts_building","path":"tilesets/ts_building/ts_building.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
        {"$GMRTileLayer":"","%Name":"Floor","depth":783,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Floor","properties":[],"resourceType":"GMRTileLayer","resourceVersion":"2.0","tiles":{"SerialiseHeight":23,"SerialiseWidth":40,"TileCompressedData":[
              -26,0,-14,-2147483648,-26,0,-14,-2147483648,-8,0,-2,19,-19,20,-2,21,-9,-2147483648,-8,0,-2,37,-19,38,
              -2,39,-9,-2147483648,-8,0,-2,37,-19,38,-2,39,-9,-2147483648,-8,0,-2,37,-19,38,-2,39,-9,-2147483648,-8,
              0,-2,37,-19,38,-2,39,-9,-2147483648,-8,0,-2,55,-19,56,-2,57,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,
              -2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,-8,0,1,26,-21,
              27,1,28,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,-8,
              0,1,26,-21,27,1,28,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,-8,0,1,26,-21,27,1,28,-9,-2147483648,
              -8,0,1,44,-21,45,1,46,-9,-2147483648,-26,0,-174,-2147483648,
            ],"TileDataFormat":1,},"tilesetId":{"name":"ts_building","path":"tilesets/ts_building/ts_building.yy",},"userdefinedDepth":false,"visible":true,"x":0,"y":0,},
      ],"name":"Tiles","properties":[],"resourceType":"GMRLayer","resourceVersion":"2.0","userdefinedDepth":false,"visible":true,},
    {"$GMRBackgroundLayer":"","%Name":"Background","animationFPS":15.0,"animationSpeedType":0,"colour":4279635215,"depth":9999,"effectEnabled":true,"effectType":null,"gridX":32,"gridY":32,"hierarchyFrozen":false,"hspeed":0.0,"htiled":false,"inheritLayerDepth":true,"inheritLayerSettings":false,"inheritSubLayers":true,"inheritVisibility":true,"layers":[],"name":"Background","properties":[],"resourceType":"GMRBackgroundLayer","resourceVersion":"2.0","spriteId":null,"stretch":false,"userdefinedAnimFPS":false,"userdefinedDepth":true,"visible":true,"vspeed":0.0,"vtiled":false,"x":0,"y":0,},
  ],
  "name":"rm_shop",
  "parent":{
    "name":"Rooms",
    "path":"folders/Rooms.yy",
  },
  "parentRoom":{
    "name":"rm_parent",
    "path":"rooms/rm_parent/rm_parent.yy",
  },
  "physicsSettings":{
    "inheritPhysicsSettings":true,
    "PhysicsWorld":false,
    "PhysicsWorldGravityX":0.0,
    "PhysicsWorldGravityY":10.0,
    "PhysicsWorldPixToMetres":0.1,
  },
  "resourceType":"GMRoom",
  "resourceVersion":"2.0",
  "roomSettings":{
    "Height":720,
    "inheritRoomSettings":false,
    "persistent":false,
    "Width":1280,
  },
  "sequenceId":null,
  "views":[
    {"hborder":0,"hport":1080,"hspeed":100,"hview":720,"inherit":false,"objectId":null,"vborder":0,"visible":true,"vspeed":100,"wport":1920,"wview":1280,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
    {"hborder":32,"hport":768,"hspeed":-1,"hview":768,"inherit":false,"objectId":null,"vborder":32,"visible":false,"vspeed":-1,"wport":1366,"wview":1366,"xport":0,"xview":0,"yport":0,"yview":0,},
  ],
  "viewSettings":{
    "clearDisplayBuffer":true,
    "clearViewBackground":true,
    "enableViews":true,
    "inheritViewSettings":true,
  },
  "volume":1.0,
}