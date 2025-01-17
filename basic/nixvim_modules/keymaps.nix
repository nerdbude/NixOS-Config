{
  programs.nixvim = { 
      keymaps = [

        # SPLIT NAVIGATION
        {
          mode = "n";
          key = "<C-h>";
          action = "<C-w>h";
          options = {
            desc = "Go to left window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-j>";
          action = "<C-w>j";
          options = {
            desc = "Go to lower window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-k>";
          action = "<C-w>k";
          options = {
            desc = "Go to upper window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-l>";
          action = "<C-w>l";
          options.desc = "Go to right window";
        }

       {
          mode = "n";
          key = "<C-Up>";
          action = "<Cmd>resize -2<CR>";
          options.desc = "rescale split up";
        }
        {
          mode = "n";
          key = "<C-Down>";
          action = "<Cmd>resize +2<CR>";
          options.desc = "rescale split down";
        }
        {
          mode = "n";
          key = "<C-Left>";
          action = "<Cmd>vertical resize -2<CR>";
          options.desc = "rescale split left";
        }
        {
          mode = "n";
          key = "<C-Right>";
          action = "<Cmd>vertical resize +2<CR>";
          options.desc = "rescale split right";
        }
      ];
    };
}
