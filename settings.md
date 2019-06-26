# コンテナに入る
docker exec -it jupyter_datascience /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"

# パスワード設定
- dockerコンテナ内部にexecで入り以下コマンドを実行
``` パスワード設定コマンド
python -c 'from notebook.auth import passwd;print(passwd())'

export JUPYTERTOKEN="YOUR_PASSWORD_HASH_VALUE"
```

# Jupyter実行
start-notebook.sh \
--NotebookApp.password=$JUPYTERTOKEN --port Your docker-compose setting ports


sudo docker run  \
    --user jovyan \
    -e GRANT_SUDO=yes \
    -e NB_UID=$UID \
    -e NB_GID=$GID \
    -e TZ=Asia/Tokyo \
    -p 4444:4444 \
    --name testnotebo \
    -v ~/path/to/directory/:/home/jovyan/work \
    jupyter/datascience-notebook \
    start-notebook.sh \