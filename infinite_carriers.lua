BED_FLOOD = 5000
SPAWN_TYPE = Settlers.CARRIER
SPAWN_TARGET = 20
SPAWN_RADIUS = 60
SWORD_TYPE = Goods.SWORD
SWORD_TARGET = 20
SWORD_RADIUS = 5
SWORD_OFFSET_X = 3
SWORD_OFFSET_Y = 0

P3_X = 467
P3_Y = 250
P3_lastMinute = -1
P3_swords_lastMinute = -1

P4_X = 626
P4_Y = 472
P4_lastMinute = -1
P4_swords_lastMinute = -1

P5_X = 582
P5_Y = 593
P5_lastMinute = -1
P5_swords_lastMinute = -1

P6_X = 486
P6_Y = 658
P6_lastMinute = -1
P6_swords_lastMinute = -1

P7_X = 252
P7_Y = 503
P7_lastMinute = -1
P7_swords_lastMinute = -1

function topUpCarriersP3()
  local currentMinute = Game.Time()
  if P3_lastMinute ~= currentMinute then
    P3_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P3_X, P3_Y, 3, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(topUpCarriersP3, Events.FIVE_TICKS)
    end
  end
end

function topUpCarriersP4()
  local currentMinute = Game.Time()
  if P4_lastMinute ~= currentMinute then
    P4_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P4_X, P4_Y, 4, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(topUpCarriersP4, Events.FIVE_TICKS)
    end
  end
end

function topUpCarriersP5()
  local currentMinute = Game.Time()
  if P5_lastMinute ~= currentMinute then
    P5_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P5_X, P5_Y, 5, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(topUpCarriersP5, Events.FIVE_TICKS)
    end
  end
end

function topUpCarriersP6()
  local currentMinute = Game.Time()
  if P6_lastMinute ~= currentMinute then
    P6_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P6_X, P6_Y, 6, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(topUpCarriersP6, Events.FIVE_TICKS)
    end
  end
end

function topUpCarriersP7()
  local currentMinute = Game.Time()
  if P7_lastMinute ~= currentMinute then
    P7_lastMinute = currentMinute
    local numAdded = SU.Settlers.AddSettlersIfNeeded(P7_X, P7_Y, 7, SPAWN_TYPE, SPAWN_TARGET, SPAWN_RADIUS)
    if numAdded == -1 then
      unrequest_event(topUpCarriersP7, Events.FIVE_TICKS)
    end
  end
end

function topUpSwordsP3()
  local currentMinute = Game.Time()
  if P3_swords_lastMinute ~= currentMinute then
    P3_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P3_X + SWORD_OFFSET_X, P3_Y + SWORD_OFFSET_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P3_X + SWORD_OFFSET_X, P3_Y + SWORD_OFFSET_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function topUpSwordsP4()
  local currentMinute = Game.Time()
  if P4_swords_lastMinute ~= currentMinute then
    P4_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P4_X + SWORD_OFFSET_X, P4_Y + SWORD_OFFSET_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P4_X + SWORD_OFFSET_X, P4_Y + SWORD_OFFSET_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function topUpSwordsP5()
  local currentMinute = Game.Time()
  if P5_swords_lastMinute ~= currentMinute then
    P5_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P5_X + SWORD_OFFSET_X, P5_Y + SWORD_OFFSET_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P5_X + SWORD_OFFSET_X, P5_Y + SWORD_OFFSET_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function topUpSwordsP6()
  local currentMinute = Game.Time()
  if P6_swords_lastMinute ~= currentMinute then
    P6_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P6_X + SWORD_OFFSET_X, P6_Y + SWORD_OFFSET_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P6_X + SWORD_OFFSET_X, P6_Y + SWORD_OFFSET_Y, SWORD_TYPE, SWORD_TARGET - swords)
    end
  end
end

function topUpSwordsP7()
  local currentMinute = Game.Time()
  if P7_swords_lastMinute ~= currentMinute then
    P7_swords_lastMinute = currentMinute
    local swords = Goods.GetAmountInArea(-1, SWORD_TYPE, P7_X + SWORD_OFFSET_X, P7_Y + SWORD_OFFSET_Y, SWORD_RADIUS)
    if swords < SWORD_TARGET then
      SU.Goods.AddPileEx(P7_X + SWORD_OFFSET_X, P7_Y + SWORD_OFFSET_Y, SWORD_TYPE, SWORD_TARGET - swords)
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
  request_event(topUpCarriersP3, Events.FIVE_TICKS)
  request_event(topUpCarriersP4, Events.FIVE_TICKS)
  request_event(topUpCarriersP5, Events.FIVE_TICKS)
  request_event(topUpCarriersP6, Events.FIVE_TICKS)
  request_event(topUpCarriersP7, Events.FIVE_TICKS)
  request_event(topUpSwordsP3, Events.FIVE_TICKS)
  request_event(topUpSwordsP4, Events.FIVE_TICKS)
  request_event(topUpSwordsP5, Events.FIVE_TICKS)
  request_event(topUpSwordsP6, Events.FIVE_TICKS)
  request_event(topUpSwordsP7, Events.FIVE_TICKS)
  dbg.stm("Script active")
end

function register_functions()
  reg_func(topUpCarriersP3)
  reg_func(topUpCarriersP4)
  reg_func(topUpCarriersP5)
  reg_func(topUpCarriersP6)
  reg_func(topUpCarriersP7)
  reg_func(topUpSwordsP3)
  reg_func(topUpSwordsP4)
  reg_func(topUpSwordsP5)
  reg_func(topUpSwordsP6)
  reg_func(topUpSwordsP7)
end
