{ pkgs, lib, config, inputs, ... }:

{
  scripts.hello.exec = ''
    echo hello
  '';

  enterShell = ''
    hello
  '';

  cachix.pull = [ "enfoldsystems" ];
  cachix.push = "enfoldsystems";

}
