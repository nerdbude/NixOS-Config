{
  programs.nixvim = {
    plugins.lualine = {
      enable = true;
      settings = {
        alwaysDivideMiddle = true;
        ignoreFocus = [ "neo-tree" ];
        componentSeparators = {
          left = "|";
          right = "|";
        };
        sectionSeparators = {
          left = "◣";
          right = "◣";
        };

      };

    };  
  };
}
