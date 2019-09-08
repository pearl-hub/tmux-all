DEPENDS=(${PEARL_PKGREPONAME}/dot-tmux ${PEARL_PKGREPONAME}/tpm ${PEARL_PKGREPONAME}/tpm-extra ${PEARL_PKGREPONAME}/tmux-env ${PEARL_PKGREPONAME}/tmux-multi ${PEARL_PKGREPONAME}/txum)

function post_install(){

    return 0
}

function post_update(){
    post_install

    return 0
}

function pre_remove(){
    if ask "Do you want to remove all tmux related packages?" "N"
    then
        for dep in ${DEPENDS[@]}
        do
            pearl remove $dep
        done
    fi
    return 0
}
