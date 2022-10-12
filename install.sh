#/bin/bash
cd `dirname $0`
if [ -e ~/otoware/ ]; then
    echo "再インストールしますか？[y/n]"
    read n
    if [ $n = "y" ]; then
        echo "ファイルの削除をしています..."
        rm -rf ~/otoware/
        if [ $? = 0 ]; then
            echo "削除が完了しました"
        else
            echo "削除に失敗しました"
            echo "再インストールを中断します"
            exit 0
        fi
        if [ ! -e /bin/ffmpeg ]; then
            echo "パッケージリストのアップデートをしています..."
            sudo apt -y update
            if [ $? = 0 ]; then
                echo "アップデートが完了しました"
            else
                echo "アップデートに失敗しました"
                echo "インストールを中断します"
                exit 0
            fi
            echo "必要ツールのインストールをしています..."
            sudo apt -y install ffmpeg
            if [ $? = 0 ]; then
                echo "インストールが完了しました"
            else
                echo "インストールに失敗しました"
                echo "インストールを中断します"
                exit 0
            fi
        fi
        echo "ファイルのコピーをしています..."
        cp -r otoware/ ~/
        if [ $? = 0 ]; then
            echo "コピーが完了しました"
        else
            echo "コピーに失敗しました"
            echo "再インストールを中断します"
            exit 0
        fi
        echo ".gitkeepを削除しています..."
        rm -rf ~/otoware/music/.gitkeep
        if [ $? = 0 ]; then
            echo "削除が完了しました"
        else
            echo "削除に失敗しました"
            echo "インストールを中断します"
            exit 0
        fi
        echo "再インストールが完了しました"
        exit 0
    else
        echo "再インストールを中断しました"
        exit 0
    fi
else
    echo "インストールしますか？[y/n]"
    read n
    if [ $n = "y" ]; then
        echo "インストールをしています..."
        if [ ! -e /bin/ffmpeg ]; then
            echo "パッケージリストのアップデートをしています..."
            sudo apt -y update
            if [ $? = 0 ]; then
                echo "アップデートが完了しました"
            else
                echo "アップデートに失敗しました"
                echo "インストールを中断します"
                exit 0
            fi
            echo "必要ツールのインストールをしています..."
            sudo apt -y install ffmpeg
            if [ $? = 0 ]; then
                echo "インストールが完了しました"
            else
                echo "インストールに失敗しました"
                echo "インストールを中断します"
                exit 0
            fi
        fi
        echo "ファイルのコピーをしています..."
        cp -r otoware/ ~/
        if [ $? = 0 ]; then
            echo "コピーが完了しました"
        else
            echo "コピーに失敗しました"
            echo "インストールを中断します"
            exit 0
        fi
        echo ".gitkeepを削除しています..."
        rm -rf ~/otoware/music/.gitkeep
        if [ $? = 0 ]; then
            echo "削除が完了しました"
        else
            echo "削除に失敗しました"
            echo "インストールを中断します"
            exit 0
        fi
        echo "インストールが完了しました"
        exit 0
    else
        echo "インストールを中断しました"
        exit 0
    fi
fi