
pip install -U nltk

python -c "import nltk; nltk.download('wordnet')"

python -c "from nltk.corpus import wordnet as wn; print wn.synset(unicode('dog.n.1'))"
