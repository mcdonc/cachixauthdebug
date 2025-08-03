{ pkgs, lib, config, inputs, ... }:

let
  deriv = pkgs.writeShellScriptBin "testderiv" ''
    echo yup
  '';
in
{

  packages = [ deriv ];

  scripts.hello.exec = ''
    echo hello
  '';

  enterShell = ''
    hello
  '';

  cachix.pull = [ "enfoldsystems" ];
  cachix.push = "enfoldsystems";

}
