KKZPedagio = {}

KKZPedagio['Objetos'] = {}
KKZPedagio['Markers'] = {}

--\FUNCTION/--

	for i,v in ipairs(config['posPedagio']) do

		KKZPedagio['Objetos'][i] = createObject( 968, v.obj[1], v.obj[2], v.obj[3], v.obj[4], v.obj[5], v.obj[6] ) -- NÃO MECHER
		KKZPedagio['Markers'][i] = createMarker( v.marker[1], v.marker[2], v.marker[3] -1, 'corona', 2, 255, 255, 0, 255 ) -- R, G, B, A

		addEventHandler( "onMarkerHit", KKZPedagio['Markers'][i], function(hitElement)
			if isElement(hitElement) and getElementType(hitElement) == 'player' and ( not isGuestAccount( getPlayerAccount(hitElement) ) ) then
				if (not isTimer( KKZPedagio['timerClose'] )) then

					if KKZPedagio['getAcl'](hitElement) then -- VERIFICAÇÃO DAS ACLS

					moveObject(KKZPedagio['Objetos'][i], 2000, v.obj[1], v.obj[2], v.obj[3], 0, -90, 0) -- NÃO MECHER
					KKZPedagio['timerClose'] = setTimer(function()
						moveObject(KKZPedagio['Objetos'][i], 1000, v.obj[1], v.obj[2], v.obj[3], 0, v.obj[5], 0) -- NÃO MECHER
					end, 3000, 1)

					else

						if getPlayerMoney(hitElement) >= config['pedagio']['value'] then
							takePlayerMoney(hitElement, config['pedagio']['value'])
							moveObject(KKZPedagio['Objetos'][i], 2000, v.obj[1], v.obj[2], v.obj[3], 0, -90, 0) -- NÃO MECHER
							KKZPedagio['timerClose'] = setTimer(function()
								moveObject(KKZPedagio['Objetos'][i], 1000, v.obj[1], v.obj[2], v.obj[3], 0, v.obj[5], 0) -- NÃO MECHER
							end, 3000, 1)	
						else
							outputChatBox('Sem dinheiro.', hitElement) -- Player naõ tem dinheiro.
						end

					end

				end
			end
		end )

	end

--\FUNCTION/--

--\NAO MECHER/--

	KKZPedagio['getAcl'] = function(player)
		pAccount = getAccountName (getPlayerAccount(player))
		for i,v in ipairs(config['pedagio']['aclsignore']) do
			if aclGetGroup(v) then
				if ( isObjectInACLGroup( 'user.'..pAccount, aclGetGroup( v ) ) ) then
					return true
				end
			end
		end
		return false
	end

--\NAO MECHER/--

--[[
 █░▄▀ █░▄▀ █▀▀▀█ ░▀░ █▀▀▄ █░░█ █▀▀█
 █▀▄░ █▀▄░ ▄▄▄▀▀ ▀█▀ █░░█ █▀▀█ █░░█
 █░▒█ █░▒█ █▄▄▄█ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀▀
 Autor: KKZinho#3897 - Resource: Pedagio.
 Dropado em: Infinity Community.
]]