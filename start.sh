if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/joker153/Pirocopy.git /Pirocopy
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Pirocopy
fi
cd /PiroAutoFilterBot
pip3 install -U -r requirements.txt
echo "Starting Tovino...."
python3 bot.py
