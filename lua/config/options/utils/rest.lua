return {
	-- https://github.com/rest-nvim/rest.nvim#packernvim
	opts = {
		result_split_horizontal = false,
		result_split_in_place = false,
		skip_ssl_verification = false,
		encode_url = true,
		highlight = {
			enabled = true,
			timeout = 150,
		},
		result = {
			show_url = true,
			show_http_info = true,
			show_headers = true,
			formatters = {
				json = "jq",
				html = function(body)
					return vim.fn.system({ "tidy", "-i", "-q", "-" }, body)
				end
			},
		},
		jump_to_request = false,
		env_file = '.env',
		custom_dynamic_variables = {},
		yank_dry_run = true,
	},
	config = function(_, opts)
		local rest = require("rest-nvim")
		rest.setup(opts)

		local cmdopts = {
			force = true
		}

		vim.api.nvim_create_user_command("RestNvim", function()
			require("rest-nvim").run()
		end, cmdopts)

		vim.api.nvim_create_user_command("RestNvimPreview", function()
			require("rest-nvim").run(true)
		end, cmdopts)

		vim.api.nvim_create_user_command("RestNvimLast", function()
			require("rest-nvim").last()
		end, cmdopts)
	end
}
