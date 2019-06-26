# コンテナに入る
docker exec -it jupyter_datascience /bin/sh -c "[ -e /bin/bash ] && /bin/bash || /bin/sh"

# パスワード設定
- dockerコンテナ内部にexecで入り以下コマンドを実行
``` パスワード設定コマンド
python -c 'from notebook.auth import passwd;print(passwd())'
```

# Jupyter実行
start-notebook.sh \
--NotebookApp.password='sha1:3213f430bcb3:e9ca43f8305ba2a20ac1dc896a59864b387b5c97'