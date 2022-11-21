------------------ Dashboard -------------------------------
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")
local fortune = require("alpha.fortune")

-- Set header
dashboard.section.header.val = {
	" ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗ ",
	" ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║ ",
	" ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║ ",
	" ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║ ",
	" ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║ ",
	" ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝ ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("<Leader> c n", "  > New File", ":ene <BAR> startinsert <CR>"),
	dashboard.button("<Leader> f f", "  > Find Files", ":cd $HOME/Documents | Telescope find_files<CR>"),
	dashboard.button("<Leader> p p", "  > Find Projects", "<Cmd> Telescope project<CR>"),
	dashboard.button("<Leader> f h", "  > Recently Opened Files", ":Telescope oldfiles<CR>"),
	dashboard.button("<Leader> s s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	dashboard.button("<Leader> u p", "  > Update Plugins", ":PlugSync<CR>"),
	dashboard.button("<Leader> q q", "  > Quit Neovim", ":qa<CR>"),
}

-- Set footer
dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)