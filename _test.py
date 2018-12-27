
import gapi_translate

text = u"O sistema deve conter funcionalidade de fala para entender o que o tecnico esta solicitando"
t_text = gapi_translate.translate(text)

print(t_text)