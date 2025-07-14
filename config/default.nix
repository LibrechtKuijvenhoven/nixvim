{
  # Import all your configuration modules here
  imports = [ 
    ./plugins/lazygit.nix
    ./plugins/lsp.nix
    ./plugins/neo-tree.nix
    ./plugins/telescope.nix
    ./plugins/tree-sitter.nix
    ./plugins/web-devicons.nix
    ./keymaps.nix
  ];
  colorschemes.kanagawa.enable = true;


  globals = {
    mapleader = " ";
    maplocalleader = " ";

    have_nerd_font = true;
  };


  clipboard = {
    providers = {
      wl-copy.enable = true; # For Wayland
      xsel.enable = true; # For X11
    };
    # Sync clipboard between OS and Neovim
    #  Remove this option if you want your OS clipboard to remain independent.
    #  See `:help 'clipboard'`
    register = "unnamedplus";
  };

  opts = {
    number = true;
    relativenumber = true;

    # Enable mouse mode, can be useful for resizing splits for example!
    mouse = "a";

    showmode = true;

    # Enable break indent
    breakindent = true;

    # Save undo history
    undofile = true;

    # Case-insensitive searching UNLESS \C or one or more capital letters in search term
    ignorecase = true;
    smartcase = true;

    # Keep signcolumn on by default
    signcolumn = "yes";

    # Decrease update time
    updatetime = 250;

    # Decrease mapped sequence wait time
    # Displays which-key popup sooner
    timeoutlen = 300;

    # Configure how new splits should be opened
    splitright = true;
    splitbelow = true;

    # Sets how neovim will display certain whitespace characters in the editor
    #  See `:help 'list'`
    #  See `:help 'listchars'`
    list = true;
    # NOTE: .__raw here means that this field is raw lua code
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

    # Preview subsitutions live, as you type!
    inccommand = "split";

    # Show which line your cursor is on
    cursorline = true;

    # Minimal number of screen lines to keep above and below the cursor
    scrolloff = 10;

    # Set highlight on search, but clear on pressing <Esc> in normal mode
    hlsearch = true;
  };
}
