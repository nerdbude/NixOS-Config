# NIX MODULE FOR LAZYGIT
# Author: 0x17
# Mail: post@nerdbude.com
# Mastodon: https://corteximplant.com/@0x17
#
{config, pkgs, ... }:
{
  programs.lazygit = {
    enable = true;
    settings = {
      gui = {
        scrollHeight = 2;
        scrollPastBottom = true;
        scrollOffMargin = 2;
        scrollOffBehavior = "margin";

        mouseEvents = true;
        skipDiscardChangeWarning = false;
        skipStashWarning = false;
        skipNoStagedFilesWarning = false;
        skipRewordInEditorWarning = false;

        sidePanelWidth = 0.3333;
        expandFocusedSidePanel = false;
        expandedSidePanelWeight = 2;
        mainPanelSplitMode = "flexible";
        enlargedSideViewLocation = "left";
        language = "auto";

        timeFormat = "02 Jan 06";
        shortTimeFormat = "3:04PM";

        # DRACULA
        theme = {
          activeBorderColor = [ "#FF79C6" "bold" ];
          inactiveBorderColor = [ "#BD93F9" ];
          searchingActiveBorderColor = [ "#8BE9FD" "bold" ];
          optionsTextColor = [ "#6272A4" ];
          selectedLineBgColor = [ "#6272A4" ];
          inactiveViewSelectedLineBgColor = [ "bold" ];
          cherryPickedCommitFgColor = [ "#6272A4" ];
          cherryPickedCommitBgColor = [ "#8BE9FD" ];
          markedBaseCommitFgColor = [ "#8BE9FD" ];
          markedBaseCommitBgColor = [ "#F1FA8C" ];
          unstagedChangesColor = [ "#FF5555" ];
          defaultFgColor = [ "#F8F8F2" ];
      };
      show = true;

      showListFooter = true;
      showFileTree = true;
      showRandomTip = true;
      showCommandLog = true;
      showBottomLine = true;
      showPanelJumps = true;
      showIcons = true;

      nerdFontsVersion = 2;

      showFileIcons = true;

      commitAuthorShortLength = 2;
      commitAuthorLongLength = "17";
      commitHashLength = 8;

      showBranchCommitHash = false;
      showDivergenceFromBaseBranch = "none";
      commandLogSize = 8;

      splitDiff = "auto";
      windowSize = "normal";
      border = "rounded";
      animateExplosion = true;
      portraitMode = "auto";
      filterMode = "substring";

      spinner = {
        frames = [ "'|'" "/" "'-'" "'\'" ]; 
          rate = 50;
      };

      statusPanelView = "dashboard";
      switchToFilesAfterStashPop = true;
      switchToFilesAfterStashApply = true;
    };
    git = {
      paging = {
        colorArg = "always";
        pager = "";
        useConfig = false;
        externalDiffCommand = "";
      };
      commit = {
        signOff = false;
        autoWrapCommitMessage = true;
        autoWrapWidth = 72;
      };
      merging = {
        manualCommit = false;
        args = "";
        squashMergeMessage = "Squash merge {{selectedRef}} into {{currentBranch}}";
      };
      mainBranches = [ "master" "main" ];
      skipHookPrefix = "WIP";
      autoFetch = true;
      autoRefresh = true;
      fetchAll = true;
      autoStageResolvedConflicts = true;
      branchLogCmd = "git log --graph --color=always --abbrev-commit --decorate --date=relative --pretty=medium {{branchName}} --";

      allBranchesLogCmd = "git log --graph --all --color=always --abbrev-commit --decorate --date=relative  --pretty=medium";
      overrideGpg = false;
      disableForcePushing = false;
      commitPrefix = {
        pattern = "";
        replace = "";
      };
      branchPrefix = "";
      parseEmoji = false;
      log = {
        order = "topo-order";
        showGraph = "always";
        showWholeGraph = false;
        truncateCopiedCommitHashesTo = "12";
      };
    };
    update = {
      method = "prompt";
      days = 14;
    };
    refresher = {
      refreshInterval = 10;
      fetchInterval = 60;
    };
    confirmOnQuit = false;
    quitOnTopLevelReturn = false;
    os = {
      edit = "nvim {{filename}}";
      editAtLine = "";
      editAtLineAndWait = "";
      openDirInEditor = "";
      editPreset = "";
      open = "";

      openLink = "qutebrowser {{link}}";

      editCommand = "";

      editCommandTemplate = "";

      openCommand = "";

      openLinkCommand = "";

      copyToClipboardCmd = "";

      readFromClipboardCmd = "";
    };

    disableStartupPopups = false;
    notARepository = "prompt";
    promptToReturnFromSubprocess = true;

    # Keybindings
    keybinding = {
      universal = {
        quit = "q";
        quit-alt1 = "<c-c>";
        return = "<esc>";
        quitWithoutChangingDirectory = "Q";
        togglePanel = "<tab>";
        prevItem = "<up>";
        nextItem = "<down>";
        prevItem-alt = "k";
        nextItem-alt = "j";
        prevPage = ",";
        nextPage = ".";
        scrollLeft = "H";
        scrollRight = "L";
        gotoTop = "<";
        gotoBottom = ">";
        toggleRangeSelect = "v";
        rangeSelectDown = "<s-down>";
        rangeSelectUp = "<s-up>";
        prevBlock = "<left>";
        nextBlock = "<right>";
        prevBlock-alt = "h";
        nextBlock-alt = "l";
        nextBlock-alt2 = "<tab>";
        prevBlock-alt2 = "<backtab>";
        jumpToBlock = [ "1" "2" "3" "4" "5" ];
        nextMatch = "n";
        prevMatch = "N";
        startSearch = "/";
        optionMenu = "<disabled>";
        optionMenu-alt1 = "?";
        select = "<space>";
        goInto = "<enter>";
        confirm = "<enter>";
        confirmInEditor = "<a-enter>";
        remove = "d";
        new = "n";
        edit = "e";
        openFile = "o";
        scrollUpMain = "<pgup>";
        scrollDownMain = "<pgdown>";
        scrollUpMain-alt1 = "K";
        scrollDownMain-alt1 = "J";
        scrollUpMain-alt2 = "<c-u>";
        scrollDownMain-alt2 = "<c-d>";
        executeShellCommand = ":";
        createRebaseOptionsMenu = "m";
        pushFiles = "P";
        pullFiles = "p";
        refresh = "R";
        createPatchOptionsMenu = "<c-p>";
        nextTab = "]";
        prevTab = "[";
        nextScreenMode = "+";
        prevScreenMode = "_";
        undo = "z";
        redo = "<c-z>";
        filteringMenu = "<c-s>";
        diffingMenu = "W";
        diffingMenu-alt = "<c-e>";
        copyToClipboard = "<c-o>";
        openRecentRepos = "<c-r>";
        submitEditorText = "<enter>";
        toggleWhitespaceInDiffView = "<c-w>";
        increaseContextInDiffView = "}";
        decreaseContextInDiffView = "{";
        increaseRenameSimilarityThreshold = ")";
        decreaseRenameSimilarityThreshold = "(";
        openDiffTool = "<c-t>";
      };
      status = {
        checkForUpdate = "u";
        recentRepos = "<enter>";
        allBranchesLogGraph = "a";
      };
      files = {
        commitChanges = "c";
        commitChangesWithoutHook = "w";
        amendLastCommit = "A";
        commitChangesWithEditor = "C";
        findBaseCommitForFixup = "<c-f>";
        confirmDiscard = "x";
        ignoreFile = "i";
        refreshFiles = "r";
        stashAllChanges = "s";
        viewStashOptions = "S";
        toggleStagedAll = "a";
        viewResetOptions = "D";
        fetch = "f";
        toggleTreeView = "`";
        openMergeTool = "M";
        openStatusFilter = "<c-b>";
        copyFileInfoToClipboard = "y";
      };
      branches = {
        createPullRequest = "o";
        viewPullRequestOptions = "O";
        copyPullRequestURL = "<c-y>";
        checkoutBranchByName = "c";
        forceCheckoutBranch = "F";
        rebaseBranch = "r";
        renameBranch = "R";
        mergeIntoCurrentBranch = "M";
        viewGitFlowOptions = "i";
        fastForward = "f";
        createTag = "T";
        pushTag = "P";
        setUpstream = "u";
        fetchRemote = "f";
        sortOrder = "s";
      };
      worktrees ={
        viewWorktreeOptions = "w";
      };
      commits = {
        squashDown = "s";
        renameCommit = "r";
        renameCommitWithEditor = "R";
        viewResetOptions = "g";
        markCommitAsFixup = "f";
        createFixupCommit = "F";
        squashAboveCommits = "S";
        moveDownCommit = "<c-j>";
        moveUpCommit = "<c-k>";
        amendToCommit = "A";
        resetCommitAuthor = "a";
        pickCommit = "p";
        revertCommit = "t";
        cherryPickCopy = "C";
        pasteCommits = "V";
        markCommitAsBaseForRebase = "B";
        tagCommit = "T";
        checkoutCommit = "<space>";
        resetCherryPick = "<c-R>";
        copyCommitAttributeToClipboard = "y";
        openLogMenu = "<c-l>";
        openInBrowser = "o";
        viewBisectOptions = "b";
        startInteractiveRebase= "i";
      };
      amendAttribute ={
        resetAuthor = "a";
        setAuthor = "A";
        addCoAuthor = "c";
      };
      stash = {
        popStash = "g";
        renameStash = "r";
      };
      commitFiles = {
        checkoutCommitFile = "c";
      };
      main = {
        toggleSelectHunk = "a";
        pickBothHunks = "b";
        editSelectHunk = "E";
      };
      submodules = {
        init = "i";
        update = "u";
        bulkMenu = "b";
      };
      commitMenu = "<c-o>";
    };
    };
  };
}
