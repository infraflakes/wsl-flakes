{
  config,
  pkgs,
  ...
}: {
  programs.direnv = {
    enable = true;
  };
  programs.diff-so-fancy = {
    enable = true;
    enableGitIntegration = true;
  };
  programs.git = {
    enable = true;
    settings = {
      user = {
        email = "infraflakes@proton.me";
        name = "infraflakes";
      };
      color.diff = {
        meta = "blue";
        frag = "brightyellow";
        old = "red";
        new = "green";
      };
    };
  };
  # Note: clone git repos with `jj git clone <url>`
  # jj bookmark track <branch>@origin
  # jj bookmark set <current branch> -r @
  programs.jujutsu = {
    enable = true;
    settings = {
      user = {
        email = "infraflakes@proton.me";
        name = "infraflakes";
      };
    };
  };
}
