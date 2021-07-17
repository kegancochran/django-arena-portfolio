echo "This script will create a virtual environment and install the dependencies found in requirements.txt"
read -p "Continue (y/n)?" choice
case "$choice" in 
  y|Y ) echo "yes";;
  n|N ) echo "no";;
  * ) echo "invalid";;
esac
python3 -m venv .venv && source ./.venv/bin/activate && pip install -r requirements.txt
echo "...done"