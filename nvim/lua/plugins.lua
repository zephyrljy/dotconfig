local packer = require("packer")
packer.startup({
	function(use)
		-- Packer 可以管理自己本身
		use("wbthomason/packer.nvim")
		-- tokyonight
		use("folke/tokyonight.nvim")
		use("shaunsingh/nord.nvim")
		-- nvim-tree (新增)
		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons", -- optional, for file icons
			},
			tag = "nightly", -- optional, updated every week. (see issue #1193)
		})
		-- using packer.nvim
		use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = { "kyazdani42/nvim-web-devicons" } })
		use("moll/vim-bbye")
		-- lualine (新增)
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})

		use("arkav/lualine-lsp-progress")
		-- telescope （新增）
		use({ "nvim-telescope/telescope.nvim", requires = { "nvim-lua/plenary.nvim" } })
		-- dashboard-nvim (新增)
		use("glepnir/dashboard-nvim")
		-- project
		use("ahmedkhalf/project.nvim")

		-- treesitter （新增）
		use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
		--------------------- LSP --------------------
		use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
		-- Lspconfig
		use({ "neovim/nvim-lspconfig" })
		-- 补全引擎
		use("hrsh7th/nvim-cmp")
		-- snippet 引擎
		use("hrsh7th/vim-vsnip")
		-- 补全源
		use("hrsh7th/cmp-vsnip")
		use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
		use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
		use("hrsh7th/cmp-path") -- { name = 'path' }
		use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

		-- 常见编程语言代码段
		use("rafamadriz/friendly-snippets")
		-- ui (新增)
		use("onsails/lspkind-nvim")
		-- indent-blankline
		use("lukas-reineke/indent-blankline.nvim")
		--use("tami5/lspsaga.nvim" ) -- 新增
		-- 代码格式化
		-- use("mhartington/formatter.nvimj)
		use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
		-- JSON 增强
		use("b0o/schemastore.nvim")
		-- ts
		use({ "jose-elias-alvarez/nvim-lsp-ts-utils", requires = "nvim-lua/plenary.nvim" })
		use({ "iamcco/markdown-preview.nvim" })
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("nvim-autopairs").setup({})
			end,
		})
		use({
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		})
		use({
			"nullishamy/autosave.nvim",
		})
		use({
			"phaazon/hop.nvim",
			branch = "v2", -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
			end,
		})
		-- 模版定义
		use({ "glepnir/template.nvim" })
		-- 开始时间
		use({ "dstein64/vim-startuptime" })
		use("folke/trouble.nvim")
		use("folke/lsp-colors.nvim")
		-- 加速 jk移动
		use({ "rainbowhxch/accelerated-jk.nvim" })
		-- 滚动
		use("neoscroll")
		-- 你的插件列表...
	end,
	config = {
		-- 并发数限制
		max_jobs = 16,
		-- 自定义源
		git = {
			--default_url_format = "https://hub.fastgit.xyz/%s",
			--default_url_format = "https://mirror.ghproxy.com/https://github.com/%s",
			--default_url_format = "https://gitcode.net/mirrors/%s",
			--default_url_format = "https://gitclone.com/github.com/%s",
		},
		display = {
			open_fn = function()
				return require("packer.util").float({ border = "single" })
			end,
		},
	},
})
-- 每次保存 plugins.lua 自动安装插件
-- pcall(
-- 	vim.cmd,
-- 	[[
--     augroup packer_user_config
--     autocmd!
--     autocmd BufWritePost plugins.lua source <afile> | PackerSync
--     augroup end
--   ]]
-- )
