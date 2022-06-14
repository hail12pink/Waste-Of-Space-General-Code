local sm2 = {}
sm2.internal = {}
sm2.internal.subscriptions = {}
sm2.internal.id = 6e9

sm2.subscribeMessage = function(eventName:string, funcToCall:any)
  if not eventName then error("no provided event to subscribe!", 2) end
  if not funcToCall then error("no provided function to call!", 2) end
  
  sm2.internal.subscriptions[#sm2.internal.subscriptions+1] = {"name"=eventName,"func"=funcToCall}
  
  return true
end

sm2.sendMessage = function(antenna:Antenna, id:number, contents:any)
  if not antenna then error("no provided antenna!", 2) end
  if not id then error("no provided id to send to!", 2) end
  if not contents then error("no provided contents to send!", 2) end
  
  -- send message code here
  
  return true
end

sm2.setIDtoListenOn = function(id:number)
  if not id then error("no provided id to listen on!", 2) end
  if (not typeof(id) == "number") or (id < 0) or (id > 9999) or (math.round(id) ~= id) then error("invalid listening id specified. the id must be a whole number from 0-9999", 2) end
  
  sm2.internal.id = id
  
  return true
end

sm2.internal.listener = function()
  -- listener code here
end

coroutine.resume(coroutine.create(sm2.internal.listener))
