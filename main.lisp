
(defparameter *NOUNS* '(question man person woman dog))

(defparameter *ADJECTIVES* '(good first last long great little other small large))

(defparameter *VERBS* '(brought came showed took told checked got washed offered made))

(defparameter *ADVERBS* '(abruptly boldly carefully deliberatly excitedly quickly sadly))

(defun NounPhrase ()
    (append (funcall #'Article) (funcall #'Adjective) (funcall #'Noun)))

(defun VerbPhrase ()
    (append (funcall #'Verb) (funcall #'NounPhrase)))

(defun Article ()
    '(the))

(defun Adjective ()
    '(tall))

(defun Noun ()
    (list (elt *NOUNS* (random (length *NOUNS*)))))

(defun Verb ()
    (list (elt *VERBS* (random (length *VERBS*)))))

(defun Adverb ()
    (list (elt *ADVERBS* (random (length *ADVERBS*)))))

(defun Sentence ()
    (append (funcall #'NounPhrase) (funcall #'VerbPhrase)))
