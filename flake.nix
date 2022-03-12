{
  description = ''Nim Static Blog & Site Generator'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."pine-master".dir   = "master";
  inputs."pine-master".owner = "nim-nix-pkgs";
  inputs."pine-master".ref   = "master";
  inputs."pine-master".repo  = "pine";
  inputs."pine-master".type  = "github";
  inputs."pine-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_0".dir   = "v0_1_0";
  inputs."pine-v0_1_0".owner = "nim-nix-pkgs";
  inputs."pine-v0_1_0".ref   = "master";
  inputs."pine-v0_1_0".repo  = "pine";
  inputs."pine-v0_1_0".type  = "github";
  inputs."pine-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_1".dir   = "v0_1_1";
  inputs."pine-v0_1_1".owner = "nim-nix-pkgs";
  inputs."pine-v0_1_1".ref   = "master";
  inputs."pine-v0_1_1".repo  = "pine";
  inputs."pine-v0_1_1".type  = "github";
  inputs."pine-v0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_1_2".dir   = "v0_1_2";
  inputs."pine-v0_1_2".owner = "nim-nix-pkgs";
  inputs."pine-v0_1_2".ref   = "master";
  inputs."pine-v0_1_2".repo  = "pine";
  inputs."pine-v0_1_2".type  = "github";
  inputs."pine-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pine-v0_2_0".dir   = "v0_2_0";
  inputs."pine-v0_2_0".owner = "nim-nix-pkgs";
  inputs."pine-v0_2_0".ref   = "master";
  inputs."pine-v0_2_0".repo  = "pine";
  inputs."pine-v0_2_0".type  = "github";
  inputs."pine-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pine-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}