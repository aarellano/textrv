import nltk
import os

def process_text(file):
  f = open(file)
  raw = f.read()
  # The amount of chars in the texts
  print "# of chars in boeing: %(len_raw)s" % {"len_raw": len(raw)}

  tokens = nltk.word_tokenize(raw)

  # The amount of words in the texts
  print "# of tokens: %(len_tokens)s" % {"len_tokens": len(tokens)}

  # The number of sentences in the texts
  sent_tokenizer = nltk.data.load('tokenizers/punkt/english.pickle')

  sents = sent_tokenizer.tokenize(raw)
  print "# of sentences: %(len_sents)s" % {"len_sents": len(sents)}

  raw = f.read()
  porter = nltk.PorterStemmer()

  porter_stems = [porter.stem(t) for t in tokens]
  print "# of porter stems: %(len_stems)s" % {"len_stems": len(porter_stems)}

  lancaster = nltk.LancasterStemmer()

  lancaster_stems = [lancaster.stem(t) for t in tokens]
  print "# of lancaster stems: %(len_stems)s" % {"len_stems": len(lancaster_stems)}

  wnl = nltk.WordNetLemmatizer()

  wnl_stems = [wnl.lemmatize(t) for t in tokens]
  print "# of WNL stems: %(len_stems)s" % {"len_stems": len(wnl_stems)}

process_text("%(pwd)s/simple.txt" % {"pwd": os.path.dirname(__file__)})