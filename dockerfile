FROM jupyter/datascience-notebook

# ユーザー指定
USER jovyan
# 環境変数の設定
ENV GRANT_SUDO=yes \
    NB_UID=$UID \
    NB_GID=$GID \
    TZ=Asia/Tokyo