host="www143.conoha.ne.jp"
port="8022"
user="c6595488"
source="public/"
target="/home/${user}/public_html/step-up-from-one.com"

hugo --minify
git add --all
git commit -m "[update] blog"
git push origin master
rsync -r -e "ssh -i ~/.ssh/conohawing.pem -p ${port}" ${source} ${user}@${host}:${target}
