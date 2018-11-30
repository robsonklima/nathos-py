import argparse
import io
import json
import os
import numpy
import six

def classify_text(text, verbose=False):
    try:
        from google.cloud import language

        language_client = language.LanguageServiceClient()
        document = language.types.Document(content=text, type=language.enums.Document.Type.PLAIN_TEXT)
        response = language_client.classify_text(document)
        categories = response.categories

        result = []
        for category in categories:
            result.append({'name': category.name, 'confidence': category.confidence})

        if verbose:
            print(result)

        return result
    except Exception as ex:
        print(ex)