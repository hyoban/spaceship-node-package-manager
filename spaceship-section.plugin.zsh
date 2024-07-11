SPACESHIP_NODE_PACKAGE_MANAGER_SHOW="${SPACESHIP_NODE_PACKAGE_MANAGER_SHOW=true}"
SPACESHIP_NODE_PACKAGE_MANAGER_ASYNC="${SPACESHIP_NODE_PACKAGE_MANAGER_ASYNC=true}"

spaceship::find_lockfile() {
  local root="$PWD"
  local lockfile="$1"

  while [ "$root" ] &&  \
        [ ! -f "$root/$lockfile" ]; do
    root="${root%/*}"
  done

  print "$root"
}

spaceship_node_package_manager() {
  [[ $SPACESHIP_NODE_PACKAGE_MANAGER_SHOW == false ]] && return

  local package_managers=("pnpm" "yarn" "npm")
  local lock_files=("pnpm-lock.yaml" "yarn.lock" "package-lock.json")
  local colors=("yellow" "blue" "red")

  for i in 1 2 3
  do
    local package_manager="${package_managers[$i]}"
    local lock_file="${lock_files[$i]}"
    local color="${colors[$i]}"

    if spaceship::exists $package_manager; then
      local is_using=$(spaceship::find_lockfile $lock_file)
      if [[ -n "$is_using" ]]; then
        local version="$($package_manager --version)"
        spaceship::section::v4 \
          --suffix " " \
          --symbol "$package_manager " \
          --color "$color" \
          "$version"
        return
      fi
    fi
  done
}
