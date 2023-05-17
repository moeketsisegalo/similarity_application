import spacy

nlp = spacy.load('en_core_web_md')
# nlp = spacy.load('en_core_web_sm')

word1 = nlp("cat")
word2 = nlp("monkey")
word3 = nlp("banana")
print(word1.similarity(word2))
print(word3.similarity(word2))
print(word3.similarity(word1))

tokens = nlp('cat apple monkey banana ')
for token1 in tokens:
      for token2 in tokens:
            print(token1.text, token2.text, token1.similarity(token2))

sentence_to_compare = "Why is my cat on the car"
sentences = ["where did my dog go",
"Hello, there is my car",
"I\'ve lost my car in my car",
"I\'d like my boat back",
"I will name my dog Diana"]
model_sentence = nlp(sentence_to_compare)
for sentence in sentences:
      similarity = nlp(sentence).similarity(model_sentence)
      print(sentence + " - ", similarity)




# Similarity Scores:
# The results show similarity scores between pairs of entities. 
# These scores indicate the degree of similarity between the entities, ranging from 0 to 1. 
# A score of 1.0 represents an exact match or complete similarity, while lower scores indicate less similarity.

# Relative Similarity/comparative scores:
# Comparing the scores among the three entities,
# we can observe that the similarity between "cat" and "monkey" is the highest (0.592993), 
# followed by "cat" and "banana" (0.223588), and "monkey" and "banana" (0.404150).
# This suggests that, based on the model or algorithm used, "cat" and "monkey" have a higher similarity than "cat" and "banana" or "monkey" and "banana".

# Personal Example:
# To provide an example of my own, let's consider the entities "car," "bicycle," and "train." 
# These three entities share certain similarities as modes of transportation. 
# By calculating the similarity scores between these entities, we can gain insights into their relative similarities and how they compare to the previous example. 



# When running the example file with the simpler language model 'en_core_web_sm', the main difference I noticed compared to the 'en_core_web_md' model is that the 'en_core_web_sm' model does not include pre-trained word vectors.
# As a result, the similarity judgments between tokens are based solely on the tagger, parser, and Named Entity Recognition (NER) components. 
# This may lead to less accurate or useful similarity scores. 
# It's recommended to use the 'en_core_web_md' model or consider adding your own word vectors for more reliable similarity judgments.
