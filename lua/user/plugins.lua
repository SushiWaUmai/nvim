local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim",
                                  install_path}
    print("Installing packer close and reopen Neovim...")
    vim.cmd("packadd packer.nvim")
end

local packer = require("packer")

packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float({
                border = "rounded"
            })
        end
    }
}

return packer.startup(function()
    -- Package Manager
    use("wbthomason/packer.nvim")

    -- Icons
    use("kyazdani42/nvim-web-devicons")

    -- File Explorer
    use("kyazdani42/nvim-tree.lua")

    -- Start Menu
    use("goolord/alpha-nvim")

    -- Tabs
    use("akinsho/bufferline.nvim")

    -- Intellisense
    use("neovim/nvim-lspconfig")
    use("windwp/nvim-autopairs")
    use("github/copilot.vim")

    -- Tracking
    use("wakatime/vim-wakatime")

    -- Color Themes
    use("Mofiqul/vscode.nvim")

    if PACKER_BOOTSTRAP then
        packer.sync()
    end
end)
