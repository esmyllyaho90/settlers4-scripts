BED_FLOOD = 5000
SPAWN_TYPE = Settlers.CARRIER
SPAWN_TARGET = 80
SPAWN_RADIUS = 30
SWORD_TYPE = Goods.SWORD
SWORD_TARGET = 40
SWORD_RADIUS = 5
BOW_TYPE = Goods.BOW
BOW_TARGET = 20
BOW_RADIUS = 5

P3_X = 440
P3_Y = 219
P3_lastMinute = -1
P3_sword_X = 412
P3_sword_Y = 178
P3_swords_lastMinute = -1
P3_bow_X = 408
P3_bow_Y = 161
P3_bows_lastMinute = -1

P4_X = 644
P4_Y = 432
P4_lastMinute = -1
P4_sword_X = 640
P4_sword_Y = 406
P4_swords_lastMinute = -1
P4_bow_X = 672
P4_bow_Y = 405
P4_bows_lastMinute = -1

P5_X = 593
P5_Y = 622
P5_lastMinute = -1
P5_sword_X = 633
P5_sword_Y = 649
P5_swords_lastMinute = -1
P5_bow_X = 631
P5_bow_Y = 660
P5_bows_lastMinute = -1

P6_X = 495
P6_Y = 687
P6_lastMinute = -1
P6_sword_X = 545
P6_sword_Y = 712
P6_swords_lastMinute = -1
P6_bow_X = 555
P6_bow_Y = 724
P6_bows_lastMinute = -1

P7_X = 301
P7_Y = 529
P7_lastMinute = -1
P7_sword_X = 301
P7_sword_Y = 570
P7_swords_lastMinute = -1
P7_bow_X = 306
P7_bow_Y = 584
P7_bows_lastMinute = -1

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

function infiniteBowsP3()
  local currentMinute = Game.Time()
  if P3_bows_lastMinute ~= currentMinute then
    P3_bows_lastMinute = currentMinute
    local bows = Goods.GetAmountInArea(-1, BOW_TYPE, P3_bow_X, P3_bow_Y, BOW_RADIUS)
    if bows < BOW_TARGET then
      SU.Goods.AddPileEx(P3_bow_X, P3_bow_Y, BOW_TYPE, BOW_TARGET - bows)
    end
  end
end

function infiniteBowsP4()
  local currentMinute = Game.Time()
  if P4_bows_lastMinute ~= currentMinute then
    P4_bows_lastMinute = currentMinute
    local bows = Goods.GetAmountInArea(-1, BOW_TYPE, P4_bow_X, P4_bow_Y, BOW_RADIUS)
    if bows < BOW_TARGET then
      SU.Goods.AddPileEx(P4_bow_X, P4_bow_Y, BOW_TYPE, BOW_TARGET - bows)
    end
  end
end

function infiniteBowsP5()
  local currentMinute = Game.Time()
  if P5_bows_lastMinute ~= currentMinute then
    P5_bows_lastMinute = currentMinute
    local bows = Goods.GetAmountInArea(-1, BOW_TYPE, P5_bow_X, P5_bow_Y, BOW_RADIUS)
    if bows < BOW_TARGET then
      SU.Goods.AddPileEx(P5_bow_X, P5_bow_Y, BOW_TYPE, BOW_TARGET - bows)
    end
  end
end

function infiniteBowsP6()
  local currentMinute = Game.Time()
  if P6_bows_lastMinute ~= currentMinute then
    P6_bows_lastMinute = currentMinute
    local bows = Goods.GetAmountInArea(-1, BOW_TYPE, P6_bow_X, P6_bow_Y, BOW_RADIUS)
    if bows < BOW_TARGET then
      SU.Goods.AddPileEx(P6_bow_X, P6_bow_Y, BOW_TYPE, BOW_TARGET - bows)
    end
  end
end

function infiniteBowsP7()
  local currentMinute = Game.Time()
  if P7_bows_lastMinute ~= currentMinute then
    P7_bows_lastMinute = currentMinute
    local bows = Goods.GetAmountInArea(-1, BOW_TYPE, P7_bow_X, P7_bow_Y, BOW_RADIUS)
    if bows < BOW_TARGET then
      SU.Goods.AddPileEx(P7_bow_X, P7_bow_Y, BOW_TYPE, BOW_TARGET - bows)
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
  request_event(infiniteBowsP3, Events.FIVE_TICKS)
  request_event(infiniteBowsP4, Events.FIVE_TICKS)
  request_event(infiniteBowsP5, Events.FIVE_TICKS)
  request_event(infiniteBowsP6, Events.FIVE_TICKS)
  request_event(infiniteBowsP7, Events.FIVE_TICKS)
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
  reg_func(infiniteBowsP3)
  reg_func(infiniteBowsP4)
  reg_func(infiniteBowsP5)
  reg_func(infiniteBowsP6)
  reg_func(infiniteBowsP7)
end
