BED_FLOOD = 5000
SPAWN_TYPE = Settlers.CARRIER
SPAWN_TARGET = 30
SPAWN_RADIUS = 30
SWORD_TYPE = Goods.SWORD
SWORD_TARGET = 30
SWORD_RADIUS = 5

P3_X = 467
P3_Y = 250
P3_lastMinute = -1
P3_sword_X = 514
P3_sword_Y = 329
P3_swords_lastMinute = -1

P4_X = 626
P4_Y = 472
P4_lastMinute = -1
P4_sword_X = 560
P4_sword_Y = 460
P4_swords_lastMinute = -1

P5_X = 582
P5_Y = 593
P5_lastMinute = -1
P5_sword_X = 551
P5_sword_Y = 518
P5_swords_lastMinute = -1

P6_X = 486
P6_Y = 658
P6_lastMinute = -1
P6_sword_X = 521
P6_sword_Y = 665
P6_swords_lastMinute = -1

P7_X = 252
P7_Y = 503
P7_lastMinute = -1
P7_sword_X = 298
P7_sword_Y = 538
P7_swords_lastMinute = -1

function infiniteCarriersP3()
  local currentMinute = Game.Time()
  if P3_lastMinute ~= currentMinute then
    P3_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P3_X, P3_Y, 3, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(infiniteCarriersP3, Events.FIVE_TICKS)
    end
  end
end

function infiniteCarriersP4()
  local currentMinute = Game.Time()
  if P4_lastMinute ~= currentMinute then
    P4_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P4_X, P4_Y, 4, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(infiniteCarriersP4, Events.FIVE_TICKS)
    end
  end
end

function infiniteCarriersP5()
  local currentMinute = Game.Time()
  if P5_lastMinute ~= currentMinute then
    P5_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P5_X, P5_Y, 5, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(infiniteCarriersP5, Events.FIVE_TICKS)
    end
  end
end

function infiniteCarriersP6()
  local currentMinute = Game.Time()
  if P6_lastMinute ~= currentMinute then
    P6_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P6_X, P6_Y, 6, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(infiniteCarriersP6, Events.FIVE_TICKS)
    end
  end
end

function infiniteCarriersP7()
  local currentMinute = Game.Time()
  if P7_lastMinute ~= currentMinute then
    P7_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P7_X, P7_Y, 7, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(infiniteCarriersP7, Events.FIVE_TICKS)
    end
  end
end

function infiniteSwordsP3()
  local currentMinute = Game.Time()
  if P3_swords_lastMinute ~= currentMinute then
    P3_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P3_sword_X, P3_sword_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P3_sword_X, P3_sword_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function infiniteSwordsP4()
  local currentMinute = Game.Time()
  if P4_swords_lastMinute ~= currentMinute then
    P4_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P4_sword_X, P4_sword_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P4_sword_X, P4_sword_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function infiniteSwordsP5()
  local currentMinute = Game.Time()
  if P5_swords_lastMinute ~= currentMinute then
    P5_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P5_sword_X, P5_sword_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P5_sword_X, P5_sword_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function infiniteSwordsP6()
  local currentMinute = Game.Time()
  if P6_swords_lastMinute ~= currentMinute then
    P6_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P6_sword_X, P6_sword_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P6_sword_X, P6_sword_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function infiniteSwordsP7()
  local currentMinute = Game.Time()
  if P7_swords_lastMinute ~= currentMinute then
    P7_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P7_sword_X, P7_sword_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P7_sword_X, P7_sword_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function new_game()
  SU.Game.AddBeds(1, BED_FLOOD)
  SU.Game.AddBeds(2, BED_FLOOD)
  SU.Game.AddBeds(3, BED_FLOOD)
  SU.Game.AddBeds(4, BED_FLOOD)
  SU.Game.AddBeds(5, BED_FLOOD)
  SU.Game.AddBeds(6, BED_FLOOD)
  SU.Game.AddBeds(7, BED_FLOOD)
  SU.Game.AddBeds(8, BED_FLOOD)
  request_event(infiniteCarriersP3, Events.FIVE_TICKS)
  request_event(infiniteCarriersP4, Events.FIVE_TICKS)
  request_event(infiniteCarriersP5, Events.FIVE_TICKS)
  request_event(infiniteCarriersP6, Events.FIVE_TICKS)
  request_event(infiniteCarriersP7, Events.FIVE_TICKS)
  request_event(infiniteSwordsP3, Events.FIVE_TICKS)
  request_event(infiniteSwordsP4, Events.FIVE_TICKS)
  request_event(infiniteSwordsP5, Events.FIVE_TICKS)
  request_event(infiniteSwordsP6, Events.FIVE_TICKS)
  request_event(infiniteSwordsP7, Events.FIVE_TICKS)
  dbg.stm("Script active")
end

function register_functions()
  reg_func(infiniteCarriersP3)
  reg_func(infiniteCarriersP4)
  reg_func(infiniteCarriersP5)
  reg_func(infiniteCarriersP6)
  reg_func(infiniteCarriersP7)
  reg_func(infiniteSwordsP3)
  reg_func(infiniteSwordsP4)
  reg_func(infiniteSwordsP5)
  reg_func(infiniteSwordsP6)
  reg_func(infiniteSwordsP7)
end
