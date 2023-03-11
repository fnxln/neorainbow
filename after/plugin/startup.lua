rainbowdash ={ 
[[                                         __         __----__     		  ]],
[[                                        /  \__..--'' `-__-__''-_                ]],
[[                                       ( /  \    ``--,,  `-.''''`     	  ]],
[[                                       | |   `-..__  .,\    `.                  ]],
[[                         ___           ( '.  \ ____`\ )`-_    `.                ]],
[[                  ___   (   `.         '\   __/   __\' / `:-.._ \               ]],
[[                 (   `-. `.   `.       .|\_  (   / .-| |'.|    ``'              ]],
[[                  `-.   `-.`.   `.     |' ( ,'\ ( (WW| \W)j         		  ]],
[[         ..---'''':---    `.\   _\   .||  ',  \_\_`/   ``-.                     ]],
[[       ,'      .'` .'_`-,   `  (  |  |''.   `.        \__/                      ]], 
[[      /   _  .'  :' ( ```    __ \  \ |   \ ._:7,______.-'                       ]],
[[     | .-'/  : .'  .-`-._   (  `.\  '':   `-\    /                              ]],
[[     '`  /  :' : .: .-''>`-. `-. `   | '.    |  (                 		  ]],
[[        -  .' :' : /   / _( `_: `_:. `.  `;.  \  \                              ]],
[[        |  | .' : /|  | (___(   (      \   )\  ;  |                             ]],
[[       .' .' | | | `. |   \\\`---:.__-'') /  )/   |                             ]],
[[       |  |  | | |  | |   ///           |/   '    |                             ]],
[[      .' .'  '.'.`; |/ \  /     /             \__/                		  ]],
[[      |  |    | | |.|   |      /-,_______\       \                              ]],
[[     /  / )   | | '|' _/      /     |    |\       \                             ]],
[[   .:.-' .'  .' |   )/       /     |     | `--,    \                            ]],
[[        /    |  |  / |      |      |     |   /      )                           ]],
[[   .__.'    /`  :|/_/|      |      |      | (       |                           ]],
[[   `-.___.-`;  / '   |      |      |      |  \      |                           ]],
[[          .:_-'      |       \     |       \  `.___/                            ]],
[[                      \_______)     \_______)                                   ]],
}
 
local motivational = {"happy coding 💋girl!", "i's rainbow time!🌈", "you're gorgeous!🦄", "the makeup is ready?", "Think like a queen!"}

local function randomString(strings)
  math.randomseed(os.time()) -- Seed the random number generator
  local randomIndex = math.random(#strings) -- Generate a random index
  return { strings[randomIndex] } -- Return the random string
end

require"startup".setup({
	header = {
		type = "text",
		align = "center",
		fold_section = false,
		title = "Header",
		margin  = 3,
		content = rainbowdash,
		highlight = "Statement",
		default_color = "",
		oldfiles_amouhnt = 0,
	},
	text = {
		type = "text",
		align = "center",
		fold_section = false,
		title = "motivacional",
		margin  = 3,
		content = randomString(motivational),
		highlight = "Statement",
		default_color = "",
		oldfiles_amouhnt = 0,	
	},
	body = {
        type = "mapping",
        oldfiles_directory = false,
        align = "center",
        fold_section = false,
        title = "Basic Commands",
        margin = 5,
        content = {
            { " Find File", "Telescope find_files", "<leader>ff" },
            { " Find Word", "Telescope live_grep", "<leader>lg" },
            { " Recent Files", "Telescope oldfiles", "<leader>of" },
            { " File Browser", "Telescope file_browser", "<leader>fb" },
            { " Colorschemes", "Telescope colorscheme", "<leader>cs" },
            { " New File", "lua require'startup'.new_file()", "<leader>nf" },
        },
        highlight = "String",
        default_color = "",
        oldfiles_amount = 0,
    },
	parts = {
		 "text",
		 "header",
		 "body"
	}

})
