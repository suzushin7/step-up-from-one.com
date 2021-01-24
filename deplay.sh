host="www143.conoha.ne.jp"
port="8022"
user="c6595488"
target="/home/${user}/public_html/step-up-from-one.com/"

git add --all
git commit -m "[update] blog"
git push origin main
rsync -p ${port} -e "ssh -i ~/.ssh/conohawing.pem" ${user}@${host}:${target}
