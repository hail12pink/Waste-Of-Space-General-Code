local sm2 = {}
sm2.internal = {}
sm2.internal.subscriptions = {}

sm2.subscribeMessage = function(eventName:string, funcToCall:any)
  if not eventName then error("no provided event to subscribe!", 2) end
  if not funcToCall then error("no provided function to call!", 2) end
  
  sm2.internal.subscriptions[#sm2.internal.subscriptions+1] = funcToCall
  
  return true
end

sm2.sendMessage = function(antenna:Antenna, id:number)
  if not antenna then error("no provided antenna!", 2) end
  if not id then error("no provided id!", 2) end
  
  -- send message code here
  
  return true
end

sm2.internal.listener = function()
  -- listener code here
end

coroutine.resume(coroutine.create(sm2.internal.listener))
