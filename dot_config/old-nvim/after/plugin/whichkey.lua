local wk = require("which-key")
-- local chatgpt = require("chatgpt")

-- wk.add({
--   { "<leader>p", group = "ChatGPT", mode = "v" }, -- Group for ChatGPT
--   { "<leader>pe", function() chatgpt.edit_with_instructions() end, desc = "Edit with instructions", mode = "v" },
-- })

wk.add({
	{ "<leader>p", group = "CoPilot", mode = "n" }, -- Group for CoPilot
	{
		"<leader>pp",
		function()
			require("copilot.suggestion").toggle_auto_trigger()
		end,
		desc = "Toggle Copilot suggestions",
		mode = "n",
	},
})

wk.add({
	{ "<leader>c", group = "CodeCompanion", mode = "n" },
	{ "<leader>cc", "<cmd>CodeCompanionChat<cr>", desc = "Start Chat", mode = "n" },
	{ "<leader>ct", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat", mode = "n" },
	{ "<leader>ca", "<cmd>CodeCompanionActions<cr>", desc = "Show Actions", mode = "n" },
})

wk.add({
	{ "<leader>g", group = "Git", mode = "n" },
	{ "<leader>gs", "<cmd>Git<cr>", desc = "Open Fugitive", mode = "n" },
	{ "<leader>gg", "<cmd>LazyGit<cr>", desc = "Open LazyGit", mode = "n" },
})
