import argparse
import io
import json
import os
import numpy
import six

def analyse_syntax(text, verbose=False):
    from google.cloud import language
    from google.cloud.language_v1 import enums
    from google.cloud.language_v1 import types

    client = language.LanguageServiceClient()

    if isinstance(text, six.binary_type):
        text = text.decode('utf-8')

    document = types.Document(content=text, type=enums.Document.Type.PLAIN_TEXT)
    tokens = client.analyze_syntax(document).tokens

    pos_tag = ('UNKNOWN', 'ADJ', 'ADP', 'ADV', 'CONJ', 'DET', 'NOUN', 'NUM', 'PRON', 'PRT', 'PUNCT', 'VERB', 'X', 'AFFIX')

    if verbose:
        for token in tokens:
            print(u'{}: {}'.format(pos_tag[token.part_of_speech.tag], token.text.content))

    return tokens