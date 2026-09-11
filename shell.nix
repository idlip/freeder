{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "freeder-dev";

  buildInputs = with pkgs; [
    python314
    uv
    just
    git
  ];

  shellHook = ''
    if ! command -v fm >/dev/null 2>&1; then
      echo "fm (frappe-manager) not found -- install once with: uv tool install frappe-manager"
    fi
  '';
}
