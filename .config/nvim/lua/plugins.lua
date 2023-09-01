---------------------
-- Install plugins --
---------------------

return require('packer').startup(function(use)
    -- Let Packer manage itself
    use 'wbthomason/packer.nvim'

    -- Source control
    use 'tpope/vim-fugitive'
    -- Language support + code checks
    use 'dense-analysis/ale'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use 'elkowar/yuck.vim'
    use 'neovim/nvim-lspconfig'

    -- Navigation & QOL
    use 'nvim-tree/nvim-tree.lua'
    use 'junegunn/goyo.vim'
    use 'mg979/vim-visual-multi'
    use { 'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'glepnir/dashboard-nvim'
    use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}
    use 'windwp/nvim-autopairs'
    use 'tpope/vim-surround'
    use 'ggandor/leap.nvim'
    use 'folke/which-key.nvim'

    -- Aesthetics
    use 'nvim-tree/nvim-web-devicons'
    use 'junegunn/seoul256.vim'
    use 'itchyny/lightline.vim'

-------------------------------
-- Load & configure plugins  --
-------------------------------

    -- Nvim-tree (file tree)
    require('nvim-tree').setup{}
    -- Autopairs
    require('nvim-autopairs').setup{}
    -- Lspconfig
    require('lspconfig').lua_ls.setup{}
    -- Leap
    require('leap').add_default_mappings{}
    -- Which-key
    require("which-key").setup {}
    -- Treesitter (syntax highlighting)
    require'nvim-treesitter.configs'.setup {
        highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
        },
    }
end)
