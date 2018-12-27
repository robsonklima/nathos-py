
def translate(text, verbose=False):
    try:
        from google.cloud import translate

        translate_client = translate.Client()
        translation = translate_client.translate(text, target_language='en')

        if verbose:
            print(u'Input: {}'.format(text))
            print(u'Translation: {}'.format(translation['translatedText']))

        return translation['translatedText']
    except Exception as ex:
        print(ex)