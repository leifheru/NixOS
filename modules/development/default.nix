{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Build / compilation
    gcc
    clang
    gnumake
    cmake
    pkg-config

    # zed nix-support
    zed-editor
    nil
    nixd
    qt6.qtdeclarative
    # Development utilities
    git-lfs
    shellcheck

    opencode

    # Rust
    rustc
    cargo
    rustfmt
    clippy

    # Node / JavaScript
    nodejs
    pnpm

    # Python
    python3

    # Containers
    podman
    podman-compose

    # Debugging
    gdb
    strace
    lldb

    # Documentation / inspection
    man-pages
    man-pages-posix

    # C/C++ tooling
    clang-tools

  ];
}
