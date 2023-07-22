docker run --rm \
    -v $HOME/kubespray_inventory:/temp_inv \
    jyje/kubespray \
    cp -r /kubespray/inventory/sample /temp_inv/sample

vim $HOME/kubespray_inventory/sample/inventory.ini
