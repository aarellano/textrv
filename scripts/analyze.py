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

def wnl():
  wnl = nltk.WordNetLemmatizer()

  # The WNL works better when we specify the POS when calling the lemmatize method. Otherwise, it always
  # reads the words as nouns. The thing is that i only knows four parts of speech (ADJ, ADV, NOUN, and VERB)
  # so we need to handle it someway. Here I'm using a dictionary with the four recognized POS.
  wordnet_tag = {'NN':'n','JJ':'a','VB':'v','RB':'r'}

  wnl_stems = []
  for t in tagged_tokens:
    if t[1][:2] in wordnet_tag:
      wnl_stems.append((wnl.lemmatize(t[0],wordnet_tag[t[1][:2]]), t[1]))
    else:
      wnl_stems.append((wnl.lemmatize(t[0]), t[1]))

def chunks(file):
  f = open(file)
  raw = f.read()

  tokens = nltk.word_tokenize(raw)

  tagged_tokens = nltk.pos_tag(tokens)

  grammar = "NP: {<JJ.*>*<NN.*>+}"

  # Other possible grammars:

  # grammar = "NP: {<DT>?<JJ.*>*<NN.*>+}"
  # grammar = r"""
  # NP: {<DT|PP\$>?<JJ>*<NN>} # chunk determiner/possessive, adjectives and nouns
  # {<NNP>+} # chunk sequences of proper nouns
  # """
  # grammar = r"""
  # NP: {<DT><NN.*><.*>*<NN>}
  #     }<VB.*>{
  # """

  cp = nltk.RegexpParser(grammar)
  result = cp.parse(tagged_tokens)
  return result

  # print result
  # result.draw()

def findtags(tag_prefix, tagged_text):
  cfd = nltk.ConditionalFreqDist((tag, word) for (word, tag) in tagged_text if tag.startswith(tag_prefix))
  return dict((tag, cfd[tag].keys()) for tag in cfd.conditions())