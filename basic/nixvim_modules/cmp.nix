{
programs.nixvim = {
  plugins.cmp = {
    enable = true;
    autoEnableSource = true;
    settings = {
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "luasnip";}
      ];
      snippet = {
        expand = "luasnip";
      };
    };

  };
};

}

