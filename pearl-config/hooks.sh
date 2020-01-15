function post_install(){
    pearl emerge ${PEARL_PKGREPONAME}/dot-tmux
    pearl emerge ${PEARL_PKGREPONAME}/tpm
    pearl emerge ${PEARL_PKGREPONAME}/tpm-extra
    pearl emerge ${PEARL_PKGREPONAME}/tmux-env
    pearl emerge ${PEARL_PKGREPONAME}/tmux-multi
    pearl emerge ${PEARL_PKGREPONAME}/txum

    return 0
}

function post_update(){
    post_install

    return 0
}

function pre_remove(){
    if ask "Do you want to remove all tmux related packages?" "N"
    then
        pearl remove ${PEARL_PKGREPONAME}/dot-tmux
        pearl remove ${PEARL_PKGREPONAME}/tpm
        pearl remove ${PEARL_PKGREPONAME}/tpm-extra
        pearl remove ${PEARL_PKGREPONAME}/tmux-env
        pearl remove ${PEARL_PKGREPONAME}/tmux-multi
        pearl remove ${PEARL_PKGREPONAME}/txum
    fi
    return 0
}
