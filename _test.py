#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import gapi_translate

text = u"O sistema deve conter funcionalidade de fala para coletar o que o usuário necessita"
t_text = gapi_translate.translate(text)

print(t_text)