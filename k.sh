mLog()
{
    c_time="$(date +"%Y-%m-%d %H:%M:%S")"
    echo
    echo "[${c_time}] ${1}"
    echo
}
CURRENT_PATH="$(cd $(dirname ${BASH_SOURCE:-$0});pwd)"

cd "${CURRENT_PATH}"

mLog "开始自动提交${work_path}"
git add .
git commit -m "更工具包"
git push
git status
mLog "自动提交结束"
