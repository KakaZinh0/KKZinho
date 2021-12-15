--[[
 █░▄▀ █░▄▀ █▀▀▀█ ░▀░ █▀▀▄ █░░█ █▀▀█
 █▀▄░ █▀▄░ ▄▄▄▀▀ ▀█▀ █░░█ █▀▀█ █░░█
 █░▒█ █░▒█ █▄▄▄█ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀▀
 Autor: KKZinho#3897 - Resource: Pedagio.
 Dropado em: Infinity Community.
]]

config = {

	['pedagio'] = {

		['value'] = 500, -- Valor de cobrança para pagar o pedagio.
		['aclsignore'] = { -- ACLS que não iram pagar o pedagio.
			'Policial',
			'VIP',
			'Staff',
		},

	},

	['posPedagio'] = { -- Posição do obejto e marker. {obj = {posX, posY, posZ, rotX, rotY (EVITAR MECHER), rotZ}, marker = {posX, posY, posZ}}
		{obj = {2083.4831542969,-1740.1737060547,13.38438129425, 0, 90, 180}, marker = {2079.3784179688,-1737.3905029297,13.384623527527}},
		{obj = {2090.1787109375,-1725.9094238281,13.551758766174, 0, 90, 268}, marker = {2090.1787109375,-1725.9094238281,13.551758766174}},
		{obj = {2105.1101074219,-1753.9572753906,13.403202056885, 0, 90, 268}, marker = {2105.1101074219,-1753.9572753906,13.403202056885}},
	},

}