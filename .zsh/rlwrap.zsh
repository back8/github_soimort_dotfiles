#!/usr/bin/env zsh
local rlwrap_cmd_list
rlwrap_cmd_list=(
    dc tclsh
    gosh guile kawa qexo scheme
    racket
    acl2 ccl ccl64 cmucl ecl lisp sbcl
    mosml sml poly twelf-server hol
    ocaml coqtop
    maxima prover9
)

function {
    local i && for i in "${*[@]}"; do
        alias "$i"="rlwrap $i"
    done
} $rlwrap_cmd_list
