from google.cloud import language_v1
from google.cloud.language_v1 import enums
import six


def analyze_sentiment(content, verbose=False):
    client = language_v1.LanguageServiceClient()

    if isinstance(content, six.binary_type):
        content = content.decode('utf-8')

    type_ = enums.Document.Type.PLAIN_TEXT
    document = {'type': type_, 'content': content}

    response = client.analyze_sentiment(document)
    sentiment = response.document_sentiment

    if verbose:
        print('Score: {}'.format(sentiment.score))
        print('Magnitude: {}'.format(sentiment.magnitude))

    return {"score": sentiment.score, "magnitude": sentiment.magnitude}