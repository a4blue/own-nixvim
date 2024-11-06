{pkgs, ...}: let
  # Read all files in the current directory
  files = builtins.readDir ./.;

  # Filter out non-.nix files
  nixFiles = builtins.filter (name: builtins.match ".*\\.nix" name != null) (builtins.attrNames files);

  # Deny List of .nix Files, default should always be denied
  denyList = [
    "default.nix"
  ];

  # Apply the Deny List
  cleanedNixFiles = builtins.filter (name: !builtins.elem name denyList) nixFiles;

  # Create a list of import statements
  imports = map (name: ./. + "/${name}") cleanedNixFiles;
in {
  # Import all configuration modules automatically
  imports = imports;
}
