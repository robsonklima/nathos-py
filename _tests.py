#!/usr/bin/env python
# -*- coding: utf-8 -*-
from gapi_entities import analyze_entities
from gapi_syntax import analyse_syntax


#content = "The email notification must include dollar amount, date, payee name, and an identification number."
content = 'When accessing the extract service, the filters must be visible for queries with specific periods, &quot;7 days&quot;, &quot;15 days&quot;, &quot;30 days&quot; and &quot;+ periods&quot;, and the last 7 days have already been selected and presented. Filters: • &quot;7 days&quot;: shows the last seven days. • &quot;15 days&quot;: shows the last 15 days. • &quot;30 days&quot;: shows the last 30 days. • &quot;+ periods&quot;: shows the list of possible previous months of consultation. Change must be made in My Account, Affinity and Office App See slide 2 of the attached file.'



syntax = analyse_syntax(content)
pos_tag = ('UNKNOWN', 'ADJ', 'ADP', 'ADV', 'CONJ', 'DET', 'NOUN', 'NUM', 'PRON', 'PRT', 'PUNCT', 'VERB', 'X', 'AFFIX')

for token in syntax:
    if (pos_tag[token.part_of_speech.tag] in ('NOUN', 'VERB')):
        print(u'{}: {}'.format(pos_tag[token.part_of_speech.tag], token.text.content))


entity_type = ('UNKNOWN', 'PERSON', 'LOCATION', 'ORGANIZATION', 'EVENT', 'WORK_OF_ART', 'CONSUMER_GOOD', 'OTHER')
entities = analyze_entities(content)

#for entity in entities:
    #print(u'{}: {}'.format(entity.name, entity_type[entity.type]))