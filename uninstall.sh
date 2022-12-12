#/bin/bash
if [ ! -e ~/otoware/ ]; then
    echo "⚠インストールされていません"
    exit 1
else
    echo "アンインストールしますか？[y/n]"
    read n
    if [ $n = "y" ]; then
        echo "ファイルの削除をしています..."
        rm -rf ~/otoware/
        if [ $? = 0 ]; then
            echo "削除が完了しました"
        else
            echo "削除に失敗しました"
            echo "再インストールを中断します"
            exit 1
        fi
    else
        echo "アンインストールを中断しました"
        exit 0
    fi
fi