
def translate(text, verbose=False):
    try:
        from google.cloud import translate

        translate_client = translate.Client()
        target = 'en'
        translation = translate_client.translate(text, target_language=target)

        if verbose:
            print(u'Text: {}'.format(text))
            print(u'Translation: {}'.format(translation['translatedText']))

        return translation['translatedText']
    except Exception as ex:
        print(ex)