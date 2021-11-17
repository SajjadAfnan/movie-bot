if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/BXBotz2021/Movie-Bot.git /Movie-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Movie-Bot
fi
cd /Movie-Bot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
/bin/bash /start.sh
