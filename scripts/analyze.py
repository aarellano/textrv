import nltk
import os

def basics(file):
  f = open(file)
  raw = f.read()
  # The amount of chars in the texts
  print "chars=>%(len_raw)s" % {"len_raw": len(raw)}

  tokens = nltk.word_tokenize(raw)

  # The amount of words in the texts
  print "len_tokens=>%(len_tokens)s" % {"len_tokens": len(tokens)}

  # The number of sentences in the texts
  sent_tokenizer = nltk.data.load('tokenizers/punkt/english.pickle')

  sents = sent_tokenizer.tokenize(raw)
  print "sentences=>%(len_sents)s" % {"len_sents": len(sents)}

  porter = nltk.PorterStemmer()

  porter_stems = [porter.stem(t) for t in tokens]
  print "porter_stems=>%(len_stems)s" % {"len_stems": len(porter_stems)}

  lancaster = nltk.LancasterStemmer()

  lancaster_stems = [lancaster.stem(t) for t in tokens]
  print "lancaster_stems=>%(len_stems)s" % {"len_stems": len(lancaster_stems)}

  # wnl = nltk.WordNetLemmatizer()

  # wnl_stems = [wnl.lemmatize(t) for t in tokens]
  # print "WNL stems,%(len_stems)s" % {"len_stems": len(wnl_stems)}

def nouns(file):
  f = open(file)
  raw = f.read()

  tokens = nltk.word_tokenize(raw)
  tagged_tokens = nltk.pos_tag(tokens)

  tagdict = findtags('NN', tagged_tokens)
  for tag in sorted(tagdict):
    print "%(tag)s=>%(words)s" % { "tag": tag, "words": tagdict[tag] }

def findtags(tag_prefix, tagged_text):
  cfd = nltk.ConditionalFreqDist((tag, word) for (word, tag) in tagged_text if tag.startswith(tag_prefix))
  return dict((tag, cfd[tag].keys()) for tag in cfd.conditions())